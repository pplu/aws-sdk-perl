
package Paws::RDS::CreateDBParameterGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Paws::RDS::DBParameterGroup');

}
1;