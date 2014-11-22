
package Paws::RDS::ReservedDBInstancesOfferingMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ReservedDBInstancesOffering]');

}
1;