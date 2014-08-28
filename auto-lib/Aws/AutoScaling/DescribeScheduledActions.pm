
package Aws::AutoScaling::DescribeScheduledActions {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledActionNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeScheduledActionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActionsResult');
}
1;
  