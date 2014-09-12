package Aws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes {
  use Moose;
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
