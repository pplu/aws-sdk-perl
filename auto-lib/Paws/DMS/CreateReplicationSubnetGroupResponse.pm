
package Paws::DMS::CreateReplicationSubnetGroupResponse;
  use Moose;
  has ReplicationSubnetGroup => (is => 'ro', isa => 'Paws::DMS::ReplicationSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationSubnetGroupResponse

=head1 ATTRIBUTES


=head2 ReplicationSubnetGroup => L<Paws::DMS::ReplicationSubnetGroup>

The replication subnet group that was created.


=head2 _request_id => Str


=cut

1;