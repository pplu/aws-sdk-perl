
package Aws::ElastiCache::ModifyCacheCluster {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AZMode => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' );
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheSecurityGroupName' );
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NewAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PreferredAvailabilityZone' );
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheClusterResult');
}
1;
