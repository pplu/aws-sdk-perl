
package Paws::ElastiCache::ReservedCacheNodesOfferingMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ReservedCacheNodesOffering]');

}
1;