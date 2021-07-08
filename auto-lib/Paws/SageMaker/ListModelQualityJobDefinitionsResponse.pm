
package Paws::SageMaker::ListModelQualityJobDefinitionsResponse;
  use Moose;
  has JobDefinitionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringJobDefinitionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelQualityJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionSummaries => ArrayRef[L<Paws::SageMaker::MonitoringJobDefinitionSummary>]

A list of summaries of model quality monitoring job definitions.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of model quality monitoring job definitions, use
it in the next request.


=head2 _request_id => Str


=cut

1;