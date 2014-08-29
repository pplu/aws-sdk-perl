
package Aws::RedShift::DescribeClusterSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSecurityGroups');
  has Marker => (is => 'ro', isa => 'Str');

}
1;