
package Paws::CloudWatchLogs::TestMetricFilterResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has matches => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricFilterMatchRecord]');

}
1;