
package Paws::Connect::GetMetricDataResponse;
  use Moose;
  has MetricResults => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HistoricalMetricResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetMetricDataResponse

=head1 ATTRIBUTES


=head2 MetricResults => ArrayRef[L<Paws::Connect::HistoricalMetricResult>]

A list of C<HistoricalMetricResult> objects, organized by
C<Dimensions>, which is the ID of the resource specified in the
C<Filters> used for the request. The metrics are combined with the
metrics included in C<Collections>, which is a list of
C<HisotricalMetricData> objects.

If no C<Grouping> is specified in the request, C<Collections> includes
summary data for the C<HistoricalMetrics>.


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the NextToken must use the same request
parameters as the request that generated the token.


=head2 _request_id => Str


=cut

