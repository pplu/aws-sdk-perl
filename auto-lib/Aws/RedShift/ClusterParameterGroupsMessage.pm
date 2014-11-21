
package Aws::RedShift::ClusterParameterGroupsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroup]');

}
1;