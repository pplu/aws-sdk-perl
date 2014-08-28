
package Aws::RDS::PurchaseReservedDBInstancesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedDBInstance => (is => 'ro', isa => 'Aws::RDS::ReservedDBInstance');

}
1;