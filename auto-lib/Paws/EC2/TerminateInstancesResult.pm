
package Paws::EC2::TerminateInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;