# Generated from callresult_class.tt

package Paws::ElastiCache::CreateCacheSecurityGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheSecurityGroup/;
  has CacheSecurityGroup => (is => 'ro', isa => ElastiCache_CacheSecurityGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheSecurityGroup' => {
                                         'type' => 'ElastiCache_CacheSecurityGroup',
                                         'class' => 'Paws::ElastiCache::CacheSecurityGroup'
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

Paws::ElastiCache::CreateCacheSecurityGroupResult

=head1 ATTRIBUTES


=head2 CacheSecurityGroup => ElastiCache_CacheSecurityGroup




=head2 _request_id => Str


=cut

