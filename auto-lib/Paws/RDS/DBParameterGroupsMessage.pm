
package Paws::RDS::DBParameterGroupsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;