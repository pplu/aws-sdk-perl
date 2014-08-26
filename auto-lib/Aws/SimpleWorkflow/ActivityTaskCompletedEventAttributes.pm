package Aws::SimpleWorkflow::ActivityTaskCompletedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has result => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
}
1
