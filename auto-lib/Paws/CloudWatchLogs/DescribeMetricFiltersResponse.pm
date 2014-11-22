
package Paws::CloudWatchLogs::DescribeMetricFiltersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has metricFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilter]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;