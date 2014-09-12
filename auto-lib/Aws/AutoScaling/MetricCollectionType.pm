package Aws::AutoScaling::MetricCollectionType {
  use Moose;
  has Metric => (is => 'ro', isa => 'Str');
}
1
