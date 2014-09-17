package Test10ResponseReadFromFile {
  use Moose::Role;
  use File::Slurp;
  use Module::Runtime;
  use Data::Dumper;
  use Test::More;

  has response_file => (isa => 'Str', is => 'rw');

  sub do_call {
    my ($self, $call_class, @params) = @_;
    Module::Runtime::require_module($call_class);
    Module::Runtime::require_module("${call_class}Result");

    my $content = read_file($self->response_file);
    my $result = $self->_process_response($content);

    diag("DATASTRUCUTRE FROM RESPONSE");
    diag(Dumper($result));

    if ($call_class->_returns){
      if ($call_class->_result_key){
        $result = $result->{ $call_class->_result_key };
      }

      my $o_result = $call_class->_returns->from_result($result);
      return $o_result;
    } else {
      return 1;
    }
    return 0;
  }
}

1;
