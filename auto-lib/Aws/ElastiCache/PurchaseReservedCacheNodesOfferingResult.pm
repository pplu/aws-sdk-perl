
package Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedCacheNode => (is => 'ro', isa => 'Aws::ElastiCache::ReservedCacheNode');

}
1;