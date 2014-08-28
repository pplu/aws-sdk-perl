
package Aws::RDS::CreateDBSnapshot {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshotResult');
}
1;
