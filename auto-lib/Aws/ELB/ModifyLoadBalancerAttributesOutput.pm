
package Aws::ELB::ModifyLoadBalancerAttributesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');
  has LoadBalancerName => (is => 'ro', isa => 'Str');

}
1;