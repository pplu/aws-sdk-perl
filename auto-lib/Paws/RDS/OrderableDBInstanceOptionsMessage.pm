
package Paws::RDS::OrderableDBInstanceOptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OrderableDBInstanceOption]');

}
1;