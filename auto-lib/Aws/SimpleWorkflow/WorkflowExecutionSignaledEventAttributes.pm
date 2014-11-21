package Aws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes {
  use Moose;
  has externalInitiatedEventId => (is => 'ro', isa => 'Num');
  has externalWorkflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
}
1;
