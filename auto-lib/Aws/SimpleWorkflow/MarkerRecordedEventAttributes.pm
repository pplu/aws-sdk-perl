package Aws::SimpleWorkflow::MarkerRecordedEventAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}
1
