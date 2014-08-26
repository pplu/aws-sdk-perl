package Aws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Str');
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}
1
