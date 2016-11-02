
package Paws::ElastiCache::CreateCacheSecurityGroupResult;
  use Moose;
  has CacheSecurityGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheSecurityGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheSecurityGroupResult

=head1 ATTRIBUTES


=head2 CacheSecurityGroup => L<Paws::ElastiCache::CacheSecurityGroup>




=head2 _request_id => Str


=cut

