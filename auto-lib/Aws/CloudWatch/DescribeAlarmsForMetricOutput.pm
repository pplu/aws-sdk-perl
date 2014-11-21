
package Aws::CloudWatch::DescribeAlarmsForMetricOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricAlarm]');

}
1;