# Generated from callresult_class.tt

package Paws::ElastiCache::CacheEngineVersionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheEngineVersion/;
  has CacheEngineVersions => (is => 'ro', isa => ArrayRef[ElastiCache_CacheEngineVersion]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'CacheEngineVersions' => {
                                          'class' => 'Paws::ElastiCache::CacheEngineVersion',
                                          'type' => 'ArrayRef[ElastiCache_CacheEngineVersion]'
                                        }
             },
  'NameInRequest' => {
                       'CacheEngineVersions' => 'CacheEngineVersion'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheEngineVersionMessage

=head1 ATTRIBUTES


=head2 CacheEngineVersions => ArrayRef[ElastiCache_CacheEngineVersion]

A list of cache engine version details. Each element in the list
contains detailed information about one cache engine version.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

