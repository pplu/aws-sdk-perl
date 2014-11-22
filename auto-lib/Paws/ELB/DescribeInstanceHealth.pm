
package Paws::ELB::DescribeInstanceHealth {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeEndPointStateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');
}
1;