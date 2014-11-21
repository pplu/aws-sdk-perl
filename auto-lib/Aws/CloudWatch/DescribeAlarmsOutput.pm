
package Aws::CloudWatch::DescribeAlarmsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricAlarm]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;