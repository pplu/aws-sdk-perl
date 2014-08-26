package Aws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
