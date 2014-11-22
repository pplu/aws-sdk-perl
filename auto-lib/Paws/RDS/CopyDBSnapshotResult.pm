
package Paws::RDS::CopyDBSnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Paws::RDS::DBSnapshot');

}
1;