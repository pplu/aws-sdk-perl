
package Aws::ElastiCache::ReservedCacheNodesOfferingMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNodesOffering]');

}
1;