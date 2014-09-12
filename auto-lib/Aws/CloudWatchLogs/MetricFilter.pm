package Aws::CloudWatchLogs::MetricFilter {
  use Moose;
  has creationTime => (is => 'ro', isa => 'Num');
  has filterName => (is => 'ro', isa => 'Str');
  has filterPattern => (is => 'ro', isa => 'Str');
  has metricTransformations => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricTransformation]');
}
1
