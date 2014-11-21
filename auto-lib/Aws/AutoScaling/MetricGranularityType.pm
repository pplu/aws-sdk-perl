package Aws::AutoScaling::MetricGranularityType {
  use Moose;
  has Granularity => (is => 'ro', isa => 'Str');
}
1;
