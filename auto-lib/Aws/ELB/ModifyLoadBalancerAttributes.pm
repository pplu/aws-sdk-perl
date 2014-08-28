
package Aws::ELB::ModifyLoadBalancerAttributes {
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::ModifyLoadBalancerAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');
}
1;
