
package Aws::ElastiCache::CacheEngineVersionMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;