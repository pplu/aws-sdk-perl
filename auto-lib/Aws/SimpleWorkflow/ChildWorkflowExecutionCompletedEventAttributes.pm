package Aws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes {
  use Moose;
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1;
