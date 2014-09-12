package Aws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes {
  use Moose;
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
}
1
