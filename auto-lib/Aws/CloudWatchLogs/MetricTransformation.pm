package Aws::CloudWatchLogs::MetricTransformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has metricName => (is => 'ro', isa => 'Str', required => 1);
  has metricNamespace => (is => 'ro', isa => 'Str', required => 1);
  has metricValue => (is => 'ro', isa => 'Str', required => 1);
}
1
