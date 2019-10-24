# Generated from callresult_class.tt

package Paws::ElastiCache::CreateCacheClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheCluster/;
  has CacheCluster => (is => 'ro', isa => ElastiCache_CacheCluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CacheCluster' => {
                                   'class' => 'Paws::ElastiCache::CacheCluster',
                                   'type' => 'ElastiCache_CacheCluster'
                                 }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheClusterResult

=head1 ATTRIBUTES


=head2 CacheCluster => ElastiCache_CacheCluster




=head2 _request_id => Str


=cut

