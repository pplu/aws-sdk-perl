
package Paws::EMR::ListNotebookExecutionsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has NotebookExecutions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::NotebookExecutionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListNotebookExecutionsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token that a subsequent C<ListNotebookExecutions> can use
to determine the next set of results to retrieve.


=head2 NotebookExecutions => ArrayRef[L<Paws::EMR::NotebookExecutionSummary>]

A list of notebook executions.


=head2 _request_id => Str


=cut

1;