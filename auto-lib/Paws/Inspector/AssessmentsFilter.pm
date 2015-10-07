package Paws::Inspector::AssessmentsFilter;
  use Moose;
  has assessmentNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]');
  has assessmentStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has dataCollected => (is => 'ro', isa => 'Bool');
  has durationRange => (is => 'ro', isa => 'Paws::Inspector::DurationRange');
  has endTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
  has startTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange');
1;
