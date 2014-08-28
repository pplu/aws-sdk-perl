
package Aws::ELB::AttachLoadBalancerToSubnets {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::AttachLoadBalancerToSubnetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');
}
1;
  