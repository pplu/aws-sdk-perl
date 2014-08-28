
package Aws::EMR::ListClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
