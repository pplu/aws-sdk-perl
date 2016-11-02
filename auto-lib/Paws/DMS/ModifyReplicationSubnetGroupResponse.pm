
package Paws::DMS::ModifyReplicationSubnetGroupResponse;
  use Moose;
  has ReplicationSubnetGroup => (is => 'ro', isa => 'Paws::DMS::ReplicationSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationSubnetGroupResponse

=head1 ATTRIBUTES


=head2 ReplicationSubnetGroup => L<Paws::DMS::ReplicationSubnetGroup>

The modified replication subnet group.


=head2 _request_id => Str


=cut

1;