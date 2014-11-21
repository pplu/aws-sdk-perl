
package Aws::ELB::EnableAvailabilityZonesForLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::AddAvailabilityZonesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');
}
1;