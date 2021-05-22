
package Paws::SageMaker::ListDataQualityJobDefinitionsResponse;
  use Moose;
  has JobDefinitionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringJobDefinitionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDataQualityJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionSummaries => ArrayRef[L<Paws::SageMaker::MonitoringJobDefinitionSummary>]

A list of data quality monitoring job definitions.


=head2 NextToken => Str

If the result of the previous C<ListDataQualityJobDefinitions> request
was truncated, the response includes a C<NextToken>. To retrieve the
next set of data quality monitoring job definitions, use the token in
the next request.


=head2 _request_id => Str


=cut

1;