
package Paws::ElastiCache::CreateCacheSubnetGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSubnetGroup');

}
1;