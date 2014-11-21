
package Aws::CloudWatchLogs::TestMetricFilterResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has matches => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricFilterMatchRecord]');

}
1;