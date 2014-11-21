
package Aws::RDS::DescribeDBParameterGroups {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DBParameterGroupsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroupsResult');
}
1;