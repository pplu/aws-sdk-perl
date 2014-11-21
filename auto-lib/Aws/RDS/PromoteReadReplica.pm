
package Aws::RDS::PromoteReadReplica {
  use Moose;
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::PromoteReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaResult');
}
1;