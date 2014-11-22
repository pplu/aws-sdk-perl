
package Paws::ElastiCache::ReservedCacheNodeMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ReservedCacheNode]');

}
1;