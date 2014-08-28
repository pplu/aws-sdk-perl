
package Aws::RedShift::RestoreFromClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
1;