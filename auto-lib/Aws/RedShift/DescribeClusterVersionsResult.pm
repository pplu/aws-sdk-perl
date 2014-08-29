
package Aws::RedShift::DescribeClusterVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]', traits => ['Unwrapped'], xmlname => 'ClusterVersions');
  has Marker => (is => 'ro', isa => 'Str');

}
1;