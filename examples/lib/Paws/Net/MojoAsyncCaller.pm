package Paws::Net::MojoAsyncCaller {
  use Moose;

  use MojoX::IOLoop::Future;
  use Mojo::UserAgent;

  has ua => (is => 'ro', isa => 'Mojo::UserAgent', default => sub {
    Mojo::UserAgent->new
  });

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    my $method = lc($requestObj->method);
    my $response_class = $call_object->_returns;

    my $future = MojoX::IOLoop::Future->new;
    $self->ua->$method(
      $requestObj->url =>  
      $headers => 
      ($requestObj->content)?$requestObj->content:() =>
      sub {
        my ( $ua, $response ) = @_;

        my $res = $service->handle_response($call_object, $response->res->code, $response->res->body, $response->res->headers->to_hash);
        if ($res->isa('Paws::Exception')) {
          $future->fail($res);
        } else {
          if ($response_class) {
            $future->done($res);
          } else {
            $future->done(1);
          }
        }
      }   
    );
    return $future;   
  }
}

1;
