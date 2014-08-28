
package Aws::ELB::DescribeLoadBalancerAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');

}
1;