
package Paws::ELB::RegisterInstancesWithLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::RegisterEndPointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');
}
1;