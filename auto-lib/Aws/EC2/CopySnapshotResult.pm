
package Aws::EC2::CopySnapshotResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
1;