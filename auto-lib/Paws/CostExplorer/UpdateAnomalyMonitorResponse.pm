
package Paws::CostExplorer::UpdateAnomalyMonitorResponse;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateAnomalyMonitorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

A cost anomaly monitor ARN.


=head2 _request_id => Str


=cut

1;