
package Aws::RDS::DBParameterGroupsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;