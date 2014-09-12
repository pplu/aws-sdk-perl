package Aws::OpsWorks::TimeBasedAutoScalingConfiguration {
  use Moose;
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
}
1
