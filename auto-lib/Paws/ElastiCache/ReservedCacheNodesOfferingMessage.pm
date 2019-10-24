# Generated from callresult_class.tt

package Paws::ElastiCache::ReservedCacheNodesOfferingMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_ReservedCacheNodesOffering/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedCacheNodesOfferings => (is => 'ro', isa => ArrayRef[ElastiCache_ReservedCacheNodesOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedCacheNodesOfferings' => {
                                                  'class' => 'Paws::ElastiCache::ReservedCacheNodesOffering',
                                                  'type' => 'ArrayRef[ElastiCache_ReservedCacheNodesOffering]'
                                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ReservedCacheNodesOfferings' => 'ReservedCacheNodesOffering'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReservedCacheNodesOfferingMessage

=head1 ATTRIBUTES


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedCacheNodesOfferings => ArrayRef[ElastiCache_ReservedCacheNodesOffering]

A list of reserved cache node offerings. Each element in the list
contains detailed information about one offering.


=head2 _request_id => Str


=cut

