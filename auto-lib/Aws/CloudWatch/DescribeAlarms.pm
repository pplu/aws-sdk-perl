
package Aws::CloudWatch::DescribeAlarms {
  use Moose;
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsResult');
}
1;
