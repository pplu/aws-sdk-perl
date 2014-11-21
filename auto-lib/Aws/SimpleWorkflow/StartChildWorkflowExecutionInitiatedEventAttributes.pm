package Aws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1;
