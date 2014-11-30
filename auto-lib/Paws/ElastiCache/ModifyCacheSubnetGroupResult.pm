
package Paws::ElastiCache::ModifyCacheSubnetGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSubnetGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyCacheSubnetGroupResult

=head1 ATTRIBUTES

=head2 CacheSubnetGroup => Paws::ElastiCache::CacheSubnetGroup

  


=cut

