
package Aws::RedShift::DescribeClusterVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]', traits => ['Unwrapped'], xmlname => 'ClusterVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
1;