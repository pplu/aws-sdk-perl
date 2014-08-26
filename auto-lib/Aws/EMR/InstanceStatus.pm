package Aws::EMR::InstanceStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceTimeline');
}
1
