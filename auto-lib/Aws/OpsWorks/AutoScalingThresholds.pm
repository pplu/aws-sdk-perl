package Aws::OpsWorks::AutoScalingThresholds {
  use Moose;
  has CpuThreshold => (is => 'ro', isa => 'Num');
  has IgnoreMetricsTime => (is => 'ro', isa => 'Int');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LoadThreshold => (is => 'ro', isa => 'Num');
  has MemoryThreshold => (is => 'ro', isa => 'Num');
  has ThresholdsWaitTime => (is => 'ro', isa => 'Int');
}
1
