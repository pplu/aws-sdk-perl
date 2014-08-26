package Aws::SimpleWorkflow::WorkflowExecutionFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}
1
