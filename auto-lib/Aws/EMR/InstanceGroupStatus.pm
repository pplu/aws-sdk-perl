package Aws::EMR::InstanceGroupStatus {
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceGroupTimeline');
}
1;
