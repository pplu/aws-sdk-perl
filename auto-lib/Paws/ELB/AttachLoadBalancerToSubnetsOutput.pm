
package Paws::ELB::AttachLoadBalancerToSubnetsOutput;
  use Moose;
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::AttachLoadBalancerToSubnetsOutput

=head1 ATTRIBUTES


=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the subnets attached to the load balancer.


=head2 _request_id => Str


=cut

