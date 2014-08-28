
package Aws::ELB::ApplySecurityGroupsToLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;