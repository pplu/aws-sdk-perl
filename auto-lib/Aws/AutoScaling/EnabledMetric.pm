package Aws::AutoScaling::EnabledMetric {
  use Moose;
  with ('AWS::API::ResultParser');
  has Granularity => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');
}
1
