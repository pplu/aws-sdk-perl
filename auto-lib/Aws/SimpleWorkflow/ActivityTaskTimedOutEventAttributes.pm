package Aws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Num', required => 1);
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
}
1
