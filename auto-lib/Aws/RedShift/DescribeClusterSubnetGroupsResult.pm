
package Aws::RedShift::DescribeClusterSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSubnetGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSubnetGroups');
  has Marker => (is => 'ro', isa => 'Str');

}
1;