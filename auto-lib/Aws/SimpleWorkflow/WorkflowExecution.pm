package Aws::SimpleWorkflow::WorkflowExecution {
  use Moose;
  with ('AWS::API::ResultParser');
  has runId => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}
1
