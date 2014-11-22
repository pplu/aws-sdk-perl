package Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes {
  use Moose;
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1;
