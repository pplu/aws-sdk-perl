package Paws::Net::FurlCaller;
  # This caller uses Furl
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Furl;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        my $ua = Furl->new(
          timeout => 60,
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
        );
        return $ua;
    }
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host};

    my $method = uc $requestObj->method;
    my $response = $self->ua->request(
      url => $requestObj->url,
      headers => [ %$headers ],
      method => $method,
      (defined $requestObj->content)?(content => $requestObj->content):(),
    );

    $self->caller_to_response($service, $call_object, $response->code, $response->content, { $response->headers->flatten });
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;
 
    if ($status == 500 and defined $headers->{'x-internal-response'}) {
      return Paws::Exception->new(message => $content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->handle_response($call_object, $status, $content, $headers);
    }
  }
1;
