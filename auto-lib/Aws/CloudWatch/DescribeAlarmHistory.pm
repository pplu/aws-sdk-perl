
package Aws::CloudWatch::DescribeAlarmHistory {
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistoryResult');
}
1;
