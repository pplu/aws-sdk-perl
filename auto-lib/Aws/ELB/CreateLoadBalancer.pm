
package Aws::ELB::CreateLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
}
1;
  