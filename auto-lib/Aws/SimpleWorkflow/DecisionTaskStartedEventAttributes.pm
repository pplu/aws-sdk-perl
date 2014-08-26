package Aws::SimpleWorkflow::DecisionTaskStartedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has identity => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
