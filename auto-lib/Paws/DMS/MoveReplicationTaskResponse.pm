
package Paws::DMS::MoveReplicationTaskResponse;
  use Moose;
  has ReplicationTask => (is => 'ro', isa => 'Paws::DMS::ReplicationTask');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::MoveReplicationTaskResponse

=head1 ATTRIBUTES


=head2 ReplicationTask => L<Paws::DMS::ReplicationTask>

The replication task that was moved.


=head2 _request_id => Str


=cut

1;