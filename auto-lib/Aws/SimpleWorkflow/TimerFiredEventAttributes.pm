package Aws::SimpleWorkflow::TimerFiredEventAttributes {
  use Moose;
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}
1;
