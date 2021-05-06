
package Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotebookInstanceLifecycleConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::NotebookInstanceLifecycleConfigSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
get the next set of lifecycle configurations, use it in the next
request.


=head2 NotebookInstanceLifecycleConfigs => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleConfigSummary>]

An array of C<NotebookInstanceLifecycleConfiguration> objects, each
listing a lifecycle configuration.


=head2 _request_id => Str


=cut

1;