
package Paws::ELB::DescribeLoadBalancerAttributes {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeLoadBalancerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributesResult');
}
1;