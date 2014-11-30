
package Paws::EC2::UnmonitorInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnmonitorInstancesResult

=head1 ATTRIBUTES

=head2 InstanceMonitorings => ArrayRef[Paws::EC2::InstanceMonitoring]

  

Monitoring information for one or more instances.











=cut

