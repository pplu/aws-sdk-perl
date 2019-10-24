# Generated from callresult_class.tt

package Paws::ElastiCache::CacheSubnetGroupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheSubnetGroup/;
  has CacheSubnetGroups => (is => 'ro', isa => ArrayRef[ElastiCache_CacheSubnetGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheSubnetGroups' => {
                                        'class' => 'Paws::ElastiCache::CacheSubnetGroup',
                                        'type' => 'ArrayRef[ElastiCache_CacheSubnetGroup]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'CacheSubnetGroups' => 'CacheSubnetGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSubnetGroupMessage

=head1 ATTRIBUTES


=head2 CacheSubnetGroups => ArrayRef[ElastiCache_CacheSubnetGroup]

A list of cache subnet groups. Each element in the list contains
detailed information about one group.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

