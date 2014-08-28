
package Aws::ElastiCache::DescribeCacheClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheCluster]', traits => ['Unwrapped'], xmlname => 'CacheCluster');
  has Marker => (is => 'ro', isa => 'Str');

}
1;