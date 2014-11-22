
package Paws::ELB::SetLoadBalancerPoliciesForBackendServer {
  use Moose;
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::SetLoadBalancerPoliciesForBackendServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');
}
1;