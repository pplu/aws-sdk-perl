
package Paws::ElastiCache::ModifyCacheClusterResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Paws::ElastiCache::CacheCluster');

}
1;