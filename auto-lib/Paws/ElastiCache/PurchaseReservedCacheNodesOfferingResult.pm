# Generated from callresult_class.tt

package Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_ReservedCacheNode/;
  has ReservedCacheNode => (is => 'ro', isa => ElastiCache_ReservedCacheNode);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedCacheNode' => {
                                        'class' => 'Paws::ElastiCache::ReservedCacheNode',
                                        'type' => 'ElastiCache_ReservedCacheNode'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedCacheNode => ElastiCache_ReservedCacheNode




=head2 _request_id => Str


=cut

