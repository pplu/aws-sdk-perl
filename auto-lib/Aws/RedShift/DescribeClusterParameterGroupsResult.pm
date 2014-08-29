
package Aws::RedShift::DescribeClusterParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroup]', traits => ['Unwrapped'], xmlname => 'ParameterGroups');

}
1;