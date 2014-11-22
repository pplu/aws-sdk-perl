
package Paws::EC2::StartInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has StartingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;