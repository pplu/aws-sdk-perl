
package Aws::RDS::DescribeOptionGroups {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Filter]');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::OptionGroups');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupsResult');
}
1;