
package Paws::ELB::DescribeEndPointStateOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Paws::ELB::InstanceState]');

}
1;