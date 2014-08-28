
package Aws::EC2::StopInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;