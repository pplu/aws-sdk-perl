
package Paws::SageMaker::ListPipelinesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PipelineSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<ListPipelines> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
pipelines, use the token in the next request.


=head2 PipelineSummaries => ArrayRef[L<Paws::SageMaker::PipelineSummary>]

Contains a sorted list of C<PipelineSummary> objects matching the
specified filters. Each C<PipelineSummary> consists of PipelineArn,
PipelineName, ExperimentName, PipelineDescription, CreationTime,
LastModifiedTime, LastRunTime, and RoleArn. This list can be empty.


=head2 _request_id => Str


=cut

1;