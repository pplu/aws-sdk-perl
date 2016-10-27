
package Paws::DMS::ModifyReplicationInstanceResponse;
  use Moose;
  has ReplicationInstance => (is => 'ro', isa => 'Paws::DMS::ReplicationInstance');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ReplicationInstance => L<Paws::DMS::ReplicationInstance>

The modified replication instance.




=cut

1;