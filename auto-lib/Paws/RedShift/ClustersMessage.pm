
package Paws::RedShift::ClustersMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Cluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;