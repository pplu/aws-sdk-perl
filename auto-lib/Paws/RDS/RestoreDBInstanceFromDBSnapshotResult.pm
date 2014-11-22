
package Paws::RDS::RestoreDBInstanceFromDBSnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Paws::RDS::DBInstance');

}
1;