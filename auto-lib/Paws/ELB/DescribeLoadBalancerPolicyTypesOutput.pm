
package Paws::ELB::DescribeLoadBalancerPolicyTypesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyTypeDescription]');

}
1;