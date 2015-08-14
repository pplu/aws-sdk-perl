package Paws::Net::MojoAsyncCaller {
  use Moose;
  with 'Paws::Net::CallerRole';

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

use Data::Dumper;
print Dumper($response);
        if ($response->error) { 
          $future->fail(Paws::Exception->new(code => 'No Region', message => $response->error->{ message }));
          return $future;
        }

        my $res = $service->handle_response($call_object, $response->res->code, $response->res->body, $response->res->headers->to_hash);

        if (not ref($res)) {
            $future->done($res);
        } elsif ($res->isa('Paws::Exception')) {
          $future->fail($res);
        } else {
          $future->done($res);
        }
        return $future;
      } 
    );
    return $future;   
  }
}

1;
