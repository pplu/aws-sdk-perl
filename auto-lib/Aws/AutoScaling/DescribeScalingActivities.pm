
package Aws::AutoScaling::DescribeScalingActivities {
  use Moose;
  has ActivityIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeScalingActivitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivitiesResult');
}
1;
  