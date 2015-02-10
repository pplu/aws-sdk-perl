package Test10ResponseReadFromFile {
  use Moose;
  use File::Slurp;
  use Module::Runtime;
  use Data::Dumper;
  use Test::More;

  has response_file => (isa => 'Str', is => 'rw');

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $content = read_file($self->response_file);

    my $unserialized_struct = $service->unserialize_response( $content );

    diag("DATASTRUCUTRE FROM RESPONSE");
    diag(Dumper($unserialized_struct));

    return $service->response_to_object($unserialized_struct, $call_object);
  }
}

1;
