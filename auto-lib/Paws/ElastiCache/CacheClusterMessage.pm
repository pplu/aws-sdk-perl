
package Paws::ElastiCache::CacheClusterMessage;
  use Moose;
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheCluster]', request_name => 'CacheCluster', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheClusterMessage

=head1 ATTRIBUTES


=head2 CacheClusters => ArrayRef[L<Paws::ElastiCache::CacheCluster>]

A list of clusters. Each item in the list contains detailed information
about one cluster.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

