
package Paws::EC2::DescribeSnapshotsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
1;