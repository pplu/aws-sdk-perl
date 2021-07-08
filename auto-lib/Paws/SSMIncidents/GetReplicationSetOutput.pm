
package Paws::SSMIncidents::GetReplicationSetOutput;
  use Moose;
  has ReplicationSet => (is => 'ro', isa => 'Paws::SSMIncidents::ReplicationSet', traits => ['NameInRequest'], request_name => 'replicationSet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetReplicationSetOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicationSet => L<Paws::SSMIncidents::ReplicationSet>

Details of the replication set.


=head2 _request_id => Str


=cut

