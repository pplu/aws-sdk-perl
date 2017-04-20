
package Paws::ElastiCache::CacheSubnetGroupMessage;
  use Moose;
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheSubnetGroup]', request_name => 'CacheSubnetGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSubnetGroupMessage

=head1 ATTRIBUTES


=head2 CacheSubnetGroups => ArrayRef[L<Paws::ElastiCache::CacheSubnetGroup>]

A list of cache subnet groups. Each element in the list contains
detailed information about one group.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

