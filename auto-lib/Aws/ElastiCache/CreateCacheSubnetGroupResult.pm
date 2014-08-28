
package Aws::ElastiCache::CreateCacheSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
1;