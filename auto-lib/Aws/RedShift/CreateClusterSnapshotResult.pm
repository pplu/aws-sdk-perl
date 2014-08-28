
package Aws::RedShift::CreateClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
1;