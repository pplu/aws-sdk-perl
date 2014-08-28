
package Aws::ELB::DescribeLoadBalancers {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');
}
1;
  