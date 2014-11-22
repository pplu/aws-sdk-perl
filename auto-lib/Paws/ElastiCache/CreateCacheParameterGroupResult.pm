
package Paws::ElastiCache::CreateCacheParameterGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheParameterGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheParameterGroup');

}
1;