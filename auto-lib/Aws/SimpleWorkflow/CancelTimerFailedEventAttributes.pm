package Aws::SimpleWorkflow::CancelTimerFailedEventAttributes {
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}
1
