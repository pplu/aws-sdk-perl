package Aws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
}
1
