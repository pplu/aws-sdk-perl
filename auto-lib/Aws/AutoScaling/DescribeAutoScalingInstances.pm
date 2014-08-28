
package Aws::AutoScaling::DescribeAutoScalingInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAutoScalingInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstancesResult');
}
1;
