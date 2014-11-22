
package Paws::RDS::CreateDBSnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Paws::RDS::DBSnapshot');

}
1;