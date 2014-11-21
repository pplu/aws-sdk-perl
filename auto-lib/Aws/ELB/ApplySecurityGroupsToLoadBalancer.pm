
package Aws::ELB::ApplySecurityGroupsToLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::ApplySecurityGroupsToLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');
}
1;