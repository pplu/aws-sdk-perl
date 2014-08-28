
package Aws::ELB::CreateLoadBalancerListeners {
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerListenersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');
}
1;
  