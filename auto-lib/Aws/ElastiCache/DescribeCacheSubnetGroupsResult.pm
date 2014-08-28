
package Aws::ElastiCache::DescribeCacheSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSubnetGroup]', traits => ['Unwrapped'], xmlname => 'CacheSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
1;