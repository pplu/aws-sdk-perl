
package Paws::ElastiCache::CreateCacheParameterGroupResult;
  use Moose;
  has CacheParameterGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheParameterGroupResult

=head1 ATTRIBUTES


=head2 CacheParameterGroup => L<Paws::ElastiCache::CacheParameterGroup>




=head2 _request_id => Str


=cut

