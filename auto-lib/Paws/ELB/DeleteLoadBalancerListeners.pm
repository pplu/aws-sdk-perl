
package Paws::ELB::DeleteLoadBalancerListeners {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPorts => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DeleteLoadBalancerListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListenersResult');
}
1;