
package Aws::RDS::DescribeDBSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]', traits => ['Unwrapped'], xmlname => 'DBSubnetGroups');
  has Marker => (is => 'ro', isa => 'Str');

}
1;