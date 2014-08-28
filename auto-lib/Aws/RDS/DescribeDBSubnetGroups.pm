
package Aws::RDS::DescribeDBSubnetGroups {
  use Moose;
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DescribeDBSubnetGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroupsResult');
}
1;
  