
package Aws::ElastiCache::DeleteCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
1;