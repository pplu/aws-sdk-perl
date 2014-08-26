package Aws::OpsWorks::TimeBasedAutoScalingConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
}
1
