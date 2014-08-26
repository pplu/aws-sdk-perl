package Aws::SimpleWorkflow::DecisionTaskScheduledEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);
}
1
