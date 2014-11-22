
package Paws::EMR::ListClustersOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;