
package Aws::ElastiCache::DescribeReservedCacheNodesOfferings {
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ReservedCacheNodesOfferingMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferingsResult');
}
1;