
package Paws::RedShift::ClusterParameterGroupsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterParameterGroup]');

}
1;