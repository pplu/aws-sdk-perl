
package Paws::ELB::DescribeLoadBalancerAttributesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerAttributesOutput

=head1 ATTRIBUTES

=head2 LoadBalancerAttributes => Paws::ELB::LoadBalancerAttributes

  

The load balancer attributes structure.











=cut

