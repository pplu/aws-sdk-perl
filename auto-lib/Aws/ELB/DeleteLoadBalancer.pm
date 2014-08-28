
package Aws::ELB::DeleteLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DeleteLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');
}
1;
