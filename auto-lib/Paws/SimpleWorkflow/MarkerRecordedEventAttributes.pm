package Paws::SimpleWorkflow::MarkerRecordedEventAttributes {
  use Moose;
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}
1;
