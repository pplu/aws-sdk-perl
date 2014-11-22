
package Paws::RedShift::ClusterSubnetGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;