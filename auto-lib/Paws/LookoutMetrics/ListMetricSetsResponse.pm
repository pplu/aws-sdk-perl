
package Paws::LookoutMetrics::ListMetricSetsResponse;
  use Moose;
  has MetricSetSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::MetricSetSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListMetricSetsResponse

=head1 ATTRIBUTES


=head2 MetricSetSummaryList => ArrayRef[L<Paws::LookoutMetrics::MetricSetSummary>]

A list of the datasets in the AWS Region, with configuration details
for each.


=head2 NextToken => Str

If the response is truncated, the list call returns this token. To
retrieve the next set of results, use the token in the next list
request.


=head2 _request_id => Str


=cut

