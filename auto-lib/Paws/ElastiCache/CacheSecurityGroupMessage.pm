
package Paws::ElastiCache::CacheSecurityGroupMessage;
  use Moose;
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheSecurityGroup]', request_name => 'CacheSecurityGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSecurityGroupMessage

=head1 ATTRIBUTES


=head2 CacheSecurityGroups => ArrayRef[L<Paws::ElastiCache::CacheSecurityGroup>]

A list of cache security groups. Each element in the list contains
detailed information about one group.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

