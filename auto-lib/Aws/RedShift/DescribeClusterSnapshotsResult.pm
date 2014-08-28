
package Aws::RedShift::DescribeClusterSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
1;