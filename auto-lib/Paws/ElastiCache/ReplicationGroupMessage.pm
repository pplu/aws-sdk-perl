
package Paws::ElastiCache::ReplicationGroupMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ReplicationGroup]', request_name => 'ReplicationGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReplicationGroupMessage

=head1 ATTRIBUTES


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReplicationGroups => ArrayRef[L<Paws::ElastiCache::ReplicationGroup>]

A list of replication groups. Each item in the list contains detailed
information about one replication group.


=head2 _request_id => Str


=cut

