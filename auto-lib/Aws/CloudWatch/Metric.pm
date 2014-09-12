package Aws::CloudWatch::Metric {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
}
1
