package Aws::ElastiCache::CacheNode {
  use Moose;
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheNodeStatus => (is => 'ro', isa => 'Str');
  has CustomerAvailabilityZone => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
  has SourceCacheNodeId => (is => 'ro', isa => 'Str');
}
1;
