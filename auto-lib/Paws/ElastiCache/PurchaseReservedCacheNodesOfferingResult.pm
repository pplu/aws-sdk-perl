
package Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult;
  use Moose;
  has ReservedCacheNode => (is => 'ro', isa => 'Paws::ElastiCache::ReservedCacheNode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedCacheNode => L<Paws::ElastiCache::ReservedCacheNode>




=head2 _request_id => Str


=cut

