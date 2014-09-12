package Aws::ElastiCache::CacheCluster {
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNode]');
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroupStatus');
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroupMembership]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClientDownloadLandingPage => (is => 'ro', isa => 'Str');
  has ConfigurationEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Aws::ElastiCache::NotificationConfiguration');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::ElastiCache::PendingModifiedValues');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::SecurityGroupMembership]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
}
1
