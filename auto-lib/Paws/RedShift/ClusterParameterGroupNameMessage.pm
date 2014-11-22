
package Paws::RedShift::ClusterParameterGroupNameMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
1;