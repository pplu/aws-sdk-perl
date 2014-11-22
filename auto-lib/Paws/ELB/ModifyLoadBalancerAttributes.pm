
package Paws::ELB::ModifyLoadBalancerAttributes {
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ModifyLoadBalancerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');
}
1;