
package Aws::RedShift::DeleteCluster {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalClusterSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DeleteClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterResult');
}
1;
  