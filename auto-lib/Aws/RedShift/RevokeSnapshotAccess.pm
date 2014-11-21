
package Aws::RedShift::RevokeSnapshotAccess {
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::RevokeSnapshotAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');
}
1;