
package Paws::ELB::DescribeLoadBalancerAttributesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes');

}
1;