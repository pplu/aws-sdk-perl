
package Paws::ElastiCache::CacheClusterMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheCluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;