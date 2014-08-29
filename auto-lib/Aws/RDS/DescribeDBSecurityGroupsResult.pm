
package Aws::RDS::DescribeDBSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroup]', traits => ['Unwrapped'], xmlname => 'DBSecurityGroups');
  has Marker => (is => 'ro', isa => 'Str');

}
1;