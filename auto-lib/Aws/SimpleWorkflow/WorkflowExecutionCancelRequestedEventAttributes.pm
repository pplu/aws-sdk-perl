package Aws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  has cause => (is => 'ro', isa => 'Str');
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
}
1;
