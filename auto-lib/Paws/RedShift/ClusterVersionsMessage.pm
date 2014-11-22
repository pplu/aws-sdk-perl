
package Paws::RedShift::ClusterVersionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;