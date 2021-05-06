
package Paws::ElastiCache::CacheParameterGroupNameMessage;
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 CacheParameterGroupName => Str

The name of the cache parameter group.


=head2 _request_id => Str


=cut

