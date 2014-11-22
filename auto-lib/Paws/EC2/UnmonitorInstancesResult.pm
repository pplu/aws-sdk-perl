
package Paws::EC2::UnmonitorInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;