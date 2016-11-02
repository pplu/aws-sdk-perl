
package Paws::ElastiCache::ModifyCacheSubnetGroupResult;
  use Moose;
  has CacheSubnetGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyCacheSubnetGroupResult

=head1 ATTRIBUTES


=head2 CacheSubnetGroup => L<Paws::ElastiCache::CacheSubnetGroup>




=head2 _request_id => Str


=cut

