package Aws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
