
package Paws::ELB::DescribeLoadBalancerAttributesOutput;
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerAttributesOutput

=head1 ATTRIBUTES


=head2 LoadBalancerAttributes => L<Paws::ELB::LoadBalancerAttributes>

Information about the load balancer attributes.


=head2 _request_id => Str


=cut

