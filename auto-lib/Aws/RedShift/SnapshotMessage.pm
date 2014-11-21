
package Aws::RedShift::SnapshotMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Snapshot]');

}
1;