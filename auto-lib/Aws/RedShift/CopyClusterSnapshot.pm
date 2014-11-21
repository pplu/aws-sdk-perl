
package Aws::RedShift::CopyClusterSnapshot {
  use Moose;
  has SourceSnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::CopyClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshotResult');
}
1;