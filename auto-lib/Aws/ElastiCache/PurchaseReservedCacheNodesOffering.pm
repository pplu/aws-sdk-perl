
package Aws::ElastiCache::PurchaseReservedCacheNodesOffering {
  use Moose;
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');
}
1;
