
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

The time at which the metrics were retrieved and cached for pagination.


=head2 MetricResults => ArrayRef[L<Paws::Connect::CurrentMetricResult>]

Information about the real-time metrics.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the token must use the same request
parameters as the request that generated the token.


=head2 _request_id => Str


=cut

