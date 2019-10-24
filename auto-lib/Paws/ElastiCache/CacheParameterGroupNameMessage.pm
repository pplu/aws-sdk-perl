# Generated from callresult_class.tt

package Paws::ElastiCache::CacheParameterGroupNameMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw//;
  has CacheParameterGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CacheParameterGroupName' => {
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

Paws::ElastiCache::CacheParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 CacheParameterGroupName => Str

The name of the cache parameter group.


=head2 _request_id => Str


=cut

