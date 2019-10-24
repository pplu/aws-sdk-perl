# Generated from callresult_class.tt

package Paws::ElastiCache::CreateCacheSubnetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheSubnetGroup/;
  has CacheSubnetGroup => (is => 'ro', isa => ElastiCache_CacheSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheSubnetGroup' => {
                                       'class' => 'Paws::ElastiCache::CacheSubnetGroup',
                                       'type' => 'ElastiCache_CacheSubnetGroup'
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

Paws::ElastiCache::CreateCacheSubnetGroupResult

=head1 ATTRIBUTES


=head2 CacheSubnetGroup => ElastiCache_CacheSubnetGroup




=head2 _request_id => Str


=cut

