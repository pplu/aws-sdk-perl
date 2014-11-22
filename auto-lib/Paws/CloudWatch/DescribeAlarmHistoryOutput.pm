
package Paws::CloudWatch::DescribeAlarmHistoryOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AlarmHistoryItems => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::AlarmHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;