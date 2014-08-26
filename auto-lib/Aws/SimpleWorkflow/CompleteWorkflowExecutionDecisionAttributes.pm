package Aws::SimpleWorkflow::CompleteWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has result => (is => 'ro', isa => 'Str');
}
1
