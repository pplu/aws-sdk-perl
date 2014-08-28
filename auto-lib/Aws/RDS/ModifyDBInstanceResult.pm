
package Aws::RDS::ModifyDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
1;