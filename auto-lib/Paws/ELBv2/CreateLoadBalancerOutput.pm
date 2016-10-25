
package Paws::ELBv2::CreateLoadBalancerOutput;
  use Moose;
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::LoadBalancer]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateLoadBalancerOutput

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[L<Paws::ELBv2::LoadBalancer>]

Information about the load balancer.




=cut

