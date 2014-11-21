
package Aws::ELB::DescribeEndPointStateOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Aws::ELB::InstanceState]');

}
1;