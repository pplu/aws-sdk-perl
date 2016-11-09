
package Paws::EC2::UnmonitorInstancesResult;
  use Moose;
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceMonitoring]', xmlname => 'instancesSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnmonitorInstancesResult

=head1 ATTRIBUTES


=head2 InstanceMonitorings => ArrayRef[L<Paws::EC2::InstanceMonitoring>]

Monitoring information for one or more instances.


=head2 _request_id => Str


=cut

