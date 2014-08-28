
package Aws::CloudWatch::DescribeAlarmHistoryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AlarmHistoryItems => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::AlarmHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;