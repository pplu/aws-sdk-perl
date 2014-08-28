
package Aws::ElastiCache::DescribeCacheParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheParameterGroup]', traits => ['Unwrapped'], xmlname => 'CacheParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
1;