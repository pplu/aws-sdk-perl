
package Aws::RDS::CopyDBSnapshot {
  use Moose;
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CopyDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');
}
1;