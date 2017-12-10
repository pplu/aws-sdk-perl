
package Paws::SageMaker::ListNotebookInstancesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotebookInstances => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::NotebookInstanceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListNotebookInstancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response to the previous C<ListNotebookInstances> request was
truncated, Amazon SageMaker returns this token. To retrieve the next
set of notebook instances, use the token in the next request.


=head2 NotebookInstances => ArrayRef[L<Paws::SageMaker::NotebookInstanceSummary>]

An array of C<NotebookInstanceSummary> objects, one for each notebook
instance.


=head2 _request_id => Str


=cut

1;