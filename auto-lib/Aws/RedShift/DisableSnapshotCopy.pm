
package Aws::RedShift::DisableSnapshotCopy {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DisableSnapshotCopyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopyResult');
}
1;
