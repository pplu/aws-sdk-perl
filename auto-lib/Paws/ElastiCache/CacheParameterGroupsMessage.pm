# Generated from callresult_class.tt

package Paws::ElastiCache::CacheParameterGroupsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheParameterGroup/;
  has CacheParameterGroups => (is => 'ro', isa => ArrayRef[ElastiCache_CacheParameterGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CacheParameterGroups' => {
                                           'class' => 'Paws::ElastiCache::CacheParameterGroup',
                                           'type' => 'ArrayRef[ElastiCache_CacheParameterGroup]'
                                         },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'CacheParameterGroups' => 'CacheParameterGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheParameterGroupsMessage

=head1 ATTRIBUTES


=head2 CacheParameterGroups => ArrayRef[ElastiCache_CacheParameterGroup]

A list of cache parameter groups. Each element in the list contains
detailed information about one cache parameter group.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

