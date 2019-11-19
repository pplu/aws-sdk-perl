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
  'NameInRequest' => {
                       'CacheSubnetGroups' => 'CacheSubnetGroup'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CacheSubnetGroups' => {
                                        'type' => 'ArrayRef[ElastiCache_CacheSubnetGroup]',
                                        'class' => 'Paws::ElastiCache::CacheSubnetGroup'
                                      },
               'Marker' => {
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

Paws::ElastiCache::CacheSubnetGroupMessage

=head1 ATTRIBUTES


=head2 CacheSubnetGroups => ArrayRef[ElastiCache_CacheSubnetGroup]

A list of cache subnet groups. Each element in the list contains
detailed information about one group.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

