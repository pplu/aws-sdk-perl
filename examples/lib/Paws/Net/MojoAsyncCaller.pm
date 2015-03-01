package Paws::Net::MojoAsyncCaller {
  use Moose;

  use Future;
  use Mojo::UserAgent;

  has ua => (is => 'ro', isa => 'Mojo::UserAgent', default => sub {
    Mojo::UserAgent->new
  });

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = {};
    $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

    my $url = $requestObj->url;
    if ($requestObj->method eq 'GET') {
      my @param;
      for my $p (keys %{ $requestObj->parameters }) {
        push @param , join '=' , map { $self->_uri_escape($_,"^A-Za-z0-9\-_.~") } ($p, $requestObj->parameters->{$p});
      }
      $url .= '?' . (join '&', @param) if (@param);
      $requestObj->url($url);
    }

    my $method = lc($requestObj->method);
    my $response_class = $call_object->_returns;

    my $future = Future->new;
    $self->ua->$method(
      $requestObj->url =>  
      $headers => 
      ($requestObj->content)?$requestObj->content:() =>
      sub {
        my ( $ua, $response ) = @_;
        if ( $response->success ) {
          if ($response_class) {
            my $unserialized_struct = $service->unserialize_response( $response->res->body );
            my $result = $service->response_to_object($unserialized_struct, $call_object);
            $future->done($result);
          } else {
            $future->done(1);
          }
        } else {
          #TODO: retry or croak based on error codes
          $future->fail( $response->res->body );
        }
      }   
    );
    return $future;   
  }
}

1;
