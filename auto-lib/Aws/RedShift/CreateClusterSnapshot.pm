
package Aws::RedShift::CreateClusterSnapshot {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::CreateClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshotResult');
}
1;