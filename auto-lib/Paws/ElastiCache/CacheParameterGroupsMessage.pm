
package Paws::ElastiCache::CacheParameterGroupsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;