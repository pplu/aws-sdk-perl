
package Paws::RDS::DeleteDBSnapshot {
  use Moose;
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshotResult');
}
1;