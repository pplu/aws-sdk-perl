
package Paws::ElastiCache::CacheEngineVersionMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;