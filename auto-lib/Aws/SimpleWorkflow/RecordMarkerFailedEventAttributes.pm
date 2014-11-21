package Aws::SimpleWorkflow::RecordMarkerFailedEventAttributes {
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}
1;
