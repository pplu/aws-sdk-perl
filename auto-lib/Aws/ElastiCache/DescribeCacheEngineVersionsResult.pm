
package Aws::ElastiCache::DescribeCacheEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheEngineVersion]', traits => ['Unwrapped'], xmlname => 'CacheEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
1;