package Aws::SimpleWorkflow::WorkflowExecutionInfo {
  use Moose;
  has cancelRequested => (is => 'ro', isa => 'Bool');
  has closeStatus => (is => 'ro', isa => 'Str');
  has closeTimestamp => (is => 'ro', isa => 'Str');
  has execution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has executionStatus => (is => 'ro', isa => 'Str', required => 1);
  has parent => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has startTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1
