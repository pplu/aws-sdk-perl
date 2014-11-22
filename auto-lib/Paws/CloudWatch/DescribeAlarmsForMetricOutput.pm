
package Paws::CloudWatch::DescribeAlarmsForMetricOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricAlarm]');

}
1;