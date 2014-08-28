
package Aws::RDS::DescribeDBSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]', traits => ['Unwrapped'], xmlname => 'DBSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
1;