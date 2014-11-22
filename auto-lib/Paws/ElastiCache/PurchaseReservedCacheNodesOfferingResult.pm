
package Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ReservedCacheNode => (is => 'ro', isa => 'Paws::ElastiCache::ReservedCacheNode');

}
1;