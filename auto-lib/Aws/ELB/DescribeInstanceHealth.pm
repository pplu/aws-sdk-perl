
package Aws::ELB::DescribeInstanceHealth {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::DescribeInstanceHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');
}
1;
  