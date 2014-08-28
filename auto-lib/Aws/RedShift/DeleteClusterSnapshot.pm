
package Aws::RedShift::DeleteClusterSnapshot {
  use Moose;
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DeleteClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshotResult');
}
1;
  