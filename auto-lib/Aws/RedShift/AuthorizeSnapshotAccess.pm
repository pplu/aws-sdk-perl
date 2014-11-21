
package Aws::RedShift::AuthorizeSnapshotAccess {
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::AuthorizeSnapshotAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccessResult');
}
1;