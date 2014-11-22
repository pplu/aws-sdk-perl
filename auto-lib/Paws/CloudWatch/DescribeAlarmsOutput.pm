
package Paws::CloudWatch::DescribeAlarmsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricAlarm]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;