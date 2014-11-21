
package Aws::ElastiCache::CreateReplicationGroup {
  use Moose;
  has PrimaryClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
}
1;