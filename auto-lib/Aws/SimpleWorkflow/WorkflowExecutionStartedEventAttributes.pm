package Aws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has continuedExecutionRunId => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has parentInitiatedEventId => (is => 'ro', isa => 'Num');
  has parentWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1;
