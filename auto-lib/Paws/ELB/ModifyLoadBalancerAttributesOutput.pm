
package Paws::ELB::ModifyLoadBalancerAttributesOutput;
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes');
  has LoadBalancerName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ModifyLoadBalancerAttributesOutput

=head1 ATTRIBUTES


=head2 LoadBalancerAttributes => L<Paws::ELB::LoadBalancerAttributes>

Information about the load balancer attributes.


=head2 LoadBalancerName => Str

The name of the load balancer.


=head2 _request_id => Str


=cut

