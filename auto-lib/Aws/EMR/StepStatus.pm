package Aws::EMR::StepStatus {
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::StepTimeline');
}
1
