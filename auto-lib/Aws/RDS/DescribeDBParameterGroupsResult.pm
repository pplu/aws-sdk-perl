
package Aws::RDS::DescribeDBParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroup]', traits => ['Unwrapped'], xmlname => 'DBParameterGroups');
  has Marker => (is => 'ro', isa => 'Str');

}
1;