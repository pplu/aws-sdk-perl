
package Aws::ELB::DescribeLoadBalancerPoliciesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyDescription]');

}
1;