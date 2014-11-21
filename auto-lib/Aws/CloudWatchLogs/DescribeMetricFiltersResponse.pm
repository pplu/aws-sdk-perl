
package Aws::CloudWatchLogs::DescribeMetricFiltersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has metricFilters => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricFilter]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;