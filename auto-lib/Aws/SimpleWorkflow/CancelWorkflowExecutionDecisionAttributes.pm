package Aws::SimpleWorkflow::CancelWorkflowExecutionDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
}
1
