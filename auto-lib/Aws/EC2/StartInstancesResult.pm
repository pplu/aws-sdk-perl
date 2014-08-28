
package Aws::EC2::StartInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has StartingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;