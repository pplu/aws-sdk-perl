
package Paws::ElastiCache::CacheClusterMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheCluster]', traits => ['Unwrapped'], xmlname => 'CacheCluster');
  has Marker => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheClusterMessage

=head1 ATTRIBUTES

=head2 CacheClusters => ArrayRef[Paws::ElastiCache::CacheCluster]

  

A list of cache clusters. Each item in the list contains detailed
information about one cache cluster.









=head2 Marker => Str

  

Provides an identifier to allow retrieval of paginated results.











=cut

