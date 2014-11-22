
package Paws::RDS::DBParameterGroupNameMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
1;