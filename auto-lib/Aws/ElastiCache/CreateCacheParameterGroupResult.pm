
package Aws::ElastiCache::CreateCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroup');

}
1;