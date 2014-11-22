
package Paws::EC2::StopInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;