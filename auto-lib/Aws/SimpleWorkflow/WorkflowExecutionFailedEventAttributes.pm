package Aws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
}
1
