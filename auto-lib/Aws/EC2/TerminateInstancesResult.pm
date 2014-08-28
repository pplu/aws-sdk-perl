
package Aws::EC2::TerminateInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;