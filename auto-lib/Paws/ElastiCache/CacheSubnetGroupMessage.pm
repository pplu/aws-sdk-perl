
package Paws::ElastiCache::CacheSubnetGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;