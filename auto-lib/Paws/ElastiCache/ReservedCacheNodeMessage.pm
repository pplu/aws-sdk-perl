# Generated from callresult_class.tt

package Paws::ElastiCache::ReservedCacheNodeMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_ReservedCacheNode/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedCacheNodes => (is => 'ro', isa => ArrayRef[ElastiCache_ReservedCacheNode]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedCacheNodes' => {
                                         'class' => 'Paws::ElastiCache::ReservedCacheNode',
                                         'type' => 'ArrayRef[ElastiCache_ReservedCacheNode]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ReservedCacheNodes' => 'ReservedCacheNode'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReservedCacheNodeMessage

=head1 ATTRIBUTES


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedCacheNodes => ArrayRef[ElastiCache_ReservedCacheNode]

A list of reserved cache nodes. Each element in the list contains
detailed information about one node.


=head2 _request_id => Str


=cut

