
package Paws::DMS::DeleteReplicationInstanceResponse;
  use Moose;
  has ReplicationInstance => (is => 'ro', isa => 'Paws::DMS::ReplicationInstance');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteReplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ReplicationInstance => L<Paws::DMS::ReplicationInstance>

The replication instance that was deleted.


=head2 _request_id => Str


=cut

1;