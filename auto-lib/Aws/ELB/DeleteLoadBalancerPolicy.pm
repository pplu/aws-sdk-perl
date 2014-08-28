
package Aws::ELB::DeleteLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeleteLoadBalancerPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');
}
1;
