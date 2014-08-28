
package Aws::ELB::DescribeLoadBalancerPolicies {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancerPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPoliciesResult');
}
1;
