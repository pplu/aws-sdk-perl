
package Aws::EC2::DescribeSnapshotsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
1;