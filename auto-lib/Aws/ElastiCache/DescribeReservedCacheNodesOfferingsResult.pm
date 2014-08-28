
package Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNodesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNodesOffering');

}
1;