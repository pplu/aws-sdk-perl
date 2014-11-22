package Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes {
  use Moose;
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}
1;
