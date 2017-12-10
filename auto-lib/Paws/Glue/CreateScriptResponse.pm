
package Paws::Glue::CreateScriptResponse;
  use Moose;
  has PythonScript => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateScriptResponse

=head1 ATTRIBUTES


=head2 PythonScript => Str

The Python script generated from the DAG.


=head2 _request_id => Str


=cut

1;