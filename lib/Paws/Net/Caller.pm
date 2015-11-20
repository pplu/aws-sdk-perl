package Paws::Net::Caller {
  use Moose;
  use Carp qw(croak);
  with 'Paws::Net::CallerRole';
  use Paws::API::Retry;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
          timeout => 60,
        );
    }
  );

  sub is_retriable {
    my ($self, $exception) = @_;
    1;
  }

  sub do_call {
    my ($self, $service, $call_object) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object); 
    my $headers    = $requestObj->header_hash;
    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host};
    
    # Async retries should not simply 'sleep'
    my $retry_tracker_class = $self->isa('Paws::Net::MojoAsyncCaller')
      ? 'Paws::API::Retry::Async'
      : 'Paws::API::Retry';
    my $tracker = $retry_tracker_class->new(
      %{ $service->retry }, 
      max_tries => $service->max_attempts
    );

    while ($tracker->should_retry) {
      $tracker->one_more_try;
      my $response = $self->ua->request(
        $requestObj->method,
        $requestObj->url,
        {
          headers => $headers,
          (defined $requestObj->content)?(content => $requestObj->content):(),
        }
      );
      # closure over stuff Paws::API::Retry doesnt need to know about
      my $service_response_handler = sub { 
        $service->handle_response($call_object, $response->{status}, $response->{content}, $response->{headers}) 
      };
      $tracker->handle_response($response, $service_response_handler);
      $tracker->backoff  if($tracker->should_retry);
    }

    return $tracker->return;
  }
}

1;
