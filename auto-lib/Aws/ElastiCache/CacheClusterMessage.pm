
package Aws::ElastiCache::CacheClusterMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheCluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;