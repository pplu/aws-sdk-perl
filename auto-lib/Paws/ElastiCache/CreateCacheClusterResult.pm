
package Paws::ElastiCache::CreateCacheClusterResult;
  use Moose;
  has CacheCluster => (is => 'ro', isa => 'Paws::ElastiCache::CacheCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheClusterResult

=head1 ATTRIBUTES


=head2 CacheCluster => L<Paws::ElastiCache::CacheCluster>




=head2 _request_id => Str


=cut

