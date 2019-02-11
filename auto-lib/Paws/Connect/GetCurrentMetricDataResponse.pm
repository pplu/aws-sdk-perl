
package Paws::Connect::GetCurrentMetricDataResponse;
  use Moose;
  has DataSnapshotTime => (is => 'ro', isa => 'Str');
  has MetricResults => (is => 'ro', isa => 'ArrayRef[Paws::Connect::CurrentMetricResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetCurrentMetricDataResponse

=head1 ATTRIBUTES


=head2 DataSnapshotTime => Str

The time at which C<CurrentMetricData> was retrieved and cached for
pagination.


=head2 MetricResults => ArrayRef[L<Paws::Connect::CurrentMetricResult>]

A list of C<CurrentMetricResult> objects organized by C<Dimensions>
combining with C<CurrentMetricDataCollections>.

C<Dimensions> is the resourceId specified in the C<Filters> of the
request.

C<Collections> is a list of C<CurrentMetricData> objects with
corresponding values to the C<CurrentMetrics> specified in the request.

If no C<Grouping> is specified in the request, C<Collections> is a
summary for the C<CurrentMetric> returned.


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the NextToken must use the same request
parameters as the request that generated the token.


=head2 _request_id => Str


=cut

