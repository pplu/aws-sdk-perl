
package Aws::ELB::DescribeLoadBalancerPolicyTypes {
  use Moose;
  has PolicyTypeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeLoadBalancerPolicyTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');
}
1;
