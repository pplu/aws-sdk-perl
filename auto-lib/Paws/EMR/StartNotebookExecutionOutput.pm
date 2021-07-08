
package Paws::EMR::StartNotebookExecutionOutput;
  use Moose;
  has NotebookExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StartNotebookExecutionOutput

=head1 ATTRIBUTES


=head2 NotebookExecutionId => Str

The unique identifier of the notebook execution.


=head2 _request_id => Str


=cut

1;