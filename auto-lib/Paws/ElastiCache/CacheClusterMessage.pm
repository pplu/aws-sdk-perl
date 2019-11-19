# Generated from callresult_class.tt

package Paws::ElastiCache::CacheClusterMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheCluster/;
  has CacheClusters => (is => 'ro', isa => ArrayRef[ElastiCache_CacheCluster]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheClusters' => {
                                    'class' => 'Paws::ElastiCache::CacheCluster',
                                    'type' => 'ArrayRef[ElastiCache_CacheCluster]'
                                  },
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CacheClusters' => 'CacheCluster'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheClusterMessage

=head1 ATTRIBUTES


=head2 CacheClusters => ArrayRef[ElastiCache_CacheCluster]

A list of clusters. Each item in the list contains detailed information
about one cluster.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

