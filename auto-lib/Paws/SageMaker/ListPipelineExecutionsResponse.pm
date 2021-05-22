
package Paws::SageMaker::ListPipelineExecutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PipelineExecutionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelineExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<ListPipelineExecutions> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of pipeline executions, use the token in the next request.


=head2 PipelineExecutionSummaries => ArrayRef[L<Paws::SageMaker::PipelineExecutionSummary>]

Contains a sorted list of pipeline execution summary objects matching
the specified filters. Each run summary includes the Amazon Resource
Name (ARN) of the pipeline execution, the run date, and the status.
This list can be empty.


=head2 _request_id => Str


=cut

1;