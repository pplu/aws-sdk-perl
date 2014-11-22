
package Paws::ElastiCache::ModifyCacheSubnetGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSubnetGroup');

}
1;