
package Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;