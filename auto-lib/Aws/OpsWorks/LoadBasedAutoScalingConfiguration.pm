package Aws::OpsWorks::LoadBasedAutoScalingConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str');
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
}
1
