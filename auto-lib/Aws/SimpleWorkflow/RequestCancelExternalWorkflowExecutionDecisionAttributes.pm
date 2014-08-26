package Aws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has control => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}
1
