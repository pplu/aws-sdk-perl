
package Paws::ELB::ModifyLoadBalancerAttributesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes');
  has LoadBalancerName => (is => 'ro', isa => 'Str');

}
1;