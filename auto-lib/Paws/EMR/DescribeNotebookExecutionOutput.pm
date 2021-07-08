
package Paws::EMR::DescribeNotebookExecutionOutput;
  use Moose;
  has NotebookExecution => (is => 'ro', isa => 'Paws::EMR::NotebookExecution');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeNotebookExecutionOutput

=head1 ATTRIBUTES


=head2 NotebookExecution => L<Paws::EMR::NotebookExecution>

Properties of the notebook execution.


=head2 _request_id => Str


=cut

1;