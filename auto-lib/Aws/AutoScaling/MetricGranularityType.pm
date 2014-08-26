package Aws::AutoScaling::MetricGranularityType {
  use Moose;
  with ('AWS::API::ResultParser');
  has Granularity => (is => 'ro', isa => 'Str');
}
1
