
package Paws::RDS::CreateDBInstanceResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Paws::RDS::DBInstance');

}
1;