
package Aws::ElastiCache::ModifyCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
1;