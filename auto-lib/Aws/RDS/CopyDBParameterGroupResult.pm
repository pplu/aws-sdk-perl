
package Aws::RDS::CopyDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Aws::RDS::DBParameterGroup');

}
1;