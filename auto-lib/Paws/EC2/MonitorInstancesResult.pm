
package Paws::EC2::MonitorInstancesResult;
  use Moose;
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceMonitoring]', request_name => 'instancesSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MonitorInstancesResult

=head1 ATTRIBUTES


=head2 InstanceMonitorings => ArrayRef[L<Paws::EC2::InstanceMonitoring>]

The monitoring information.


=head2 _request_id => Str


=cut

