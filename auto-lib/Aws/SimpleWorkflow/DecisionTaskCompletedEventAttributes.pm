package Aws::SimpleWorkflow::DecisionTaskCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
