
package Paws::ELB::DescribeLoadBalancerPoliciesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyDescription]');

}
1;