package Aws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes {
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);
}
1
