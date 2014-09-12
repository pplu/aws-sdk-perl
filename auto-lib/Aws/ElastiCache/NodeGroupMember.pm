package Aws::ElastiCache::NodeGroupMember {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CurrentRole => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has ReadEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
}
1
