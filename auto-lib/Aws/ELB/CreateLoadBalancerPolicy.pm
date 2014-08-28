
package Aws::ELB::CreateLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');
}
1;
