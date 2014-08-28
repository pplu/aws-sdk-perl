
package Aws::CloudWatch::DescribeAlarmsForMetricResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricAlarm]');

}
1;