
package Aws::RDS::CreateDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Aws::RDS::DBParameterGroup');

}
1;