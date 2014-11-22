
package Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;