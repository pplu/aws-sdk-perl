
package Paws::CostExplorer::GetAnomalyMonitorsResponse;
  use Moose;
  has AnomalyMonitors => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::AnomalyMonitor]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetAnomalyMonitorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyMonitors => ArrayRef[L<Paws::CostExplorer::AnomalyMonitor>]

A list of cost anomaly monitors that includes the detailed metadata for
each monitor.


=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.


=head2 _request_id => Str


=cut

1;