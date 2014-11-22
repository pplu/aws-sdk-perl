
package Paws::RedShift::CopyClusterSnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Paws::RedShift::Snapshot');

}
1;