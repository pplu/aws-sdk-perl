
package Aws::ELB::DescribeLoadBalancerPolicyTypesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyTypeDescription]');

}
1;