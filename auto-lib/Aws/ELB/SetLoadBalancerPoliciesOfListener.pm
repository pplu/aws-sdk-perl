
package Aws::ELB::SetLoadBalancerPoliciesOfListener {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::SetLoadBalancerPoliciesOfListenerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');
}
1;
