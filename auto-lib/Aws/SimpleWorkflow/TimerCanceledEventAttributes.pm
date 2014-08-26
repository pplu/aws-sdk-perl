package Aws::SimpleWorkflow::TimerCanceledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}
1
