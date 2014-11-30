
package Paws::ELB::DetachLoadBalancerFromSubnetsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DetachLoadBalancerFromSubnetsOutput

=head1 ATTRIBUTES

=head2 Subnets => ArrayRef[Str]

  

A list of subnet IDs the load balancer is now attached to.











=cut

