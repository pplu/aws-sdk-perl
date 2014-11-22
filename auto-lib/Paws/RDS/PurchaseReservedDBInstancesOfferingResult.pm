
package Paws::RDS::PurchaseReservedDBInstancesOfferingResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ReservedDBInstance => (is => 'ro', isa => 'Paws::RDS::ReservedDBInstance');

}
1;