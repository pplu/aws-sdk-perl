
package Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput

=head1 ATTRIBUTES

=head2 SecurityGroups => ArrayRef[Str]

  

A list of security group IDs associated with your load balancer.











=cut

