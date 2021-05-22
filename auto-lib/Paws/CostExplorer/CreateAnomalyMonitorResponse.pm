
package Paws::CostExplorer::CreateAnomalyMonitorResponse;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateAnomalyMonitorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

The unique identifier of your newly created cost anomaly detection
monitor.


=head2 _request_id => Str


=cut

1;