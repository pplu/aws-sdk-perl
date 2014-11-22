
package Paws::ElastiCache::DeleteReplicationGroup {
  use Moose;
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryCluster => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');
}
1;