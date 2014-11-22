
package Paws::EC2::CopySnapshotResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
1;