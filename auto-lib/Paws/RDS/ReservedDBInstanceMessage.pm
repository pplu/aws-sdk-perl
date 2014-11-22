
package Paws::RDS::ReservedDBInstanceMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ReservedDBInstance]');

}
1;