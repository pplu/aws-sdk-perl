package Paws::Net::LWPCaller;
  # This caller uses LWP::UserAgent -- thus HTTPS proxies are supported.
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use LWP::UserAgent;
        my $ua = LWP::UserAgent->new(timeout => 60);
        $ua->env_proxy;
        push @{ $ua->requests_redirectable }, 'POST';
        return $ua;
    }
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host};

    my $method = lc $requestObj->method;
    my $response = $self->ua->$method(
      $requestObj->url,
        %$headers,
        (defined $requestObj->content)?(Content => $requestObj->content):(),
    );
   

   my $lcheaders = {};
   $response->headers->scan(sub { $lcheaders->{ lc$_[0] } = $_[1] });

   return Paws::Net::APIResponse->new(
      status  => $response->code,
      content => $response->content,
      headers => $lcheaders,
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    
    if ($response->status == 500 and $response->header('client-warning') eq 'Internal response') {
      return Paws::Exception->new(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->response_to_object->process($call_object, $response);
    }
  }
1;
