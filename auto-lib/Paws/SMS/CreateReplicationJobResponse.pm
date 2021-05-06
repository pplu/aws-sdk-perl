
package Paws::SMS::CreateReplicationJobResponse;
  use Moose;
  has ReplicationJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationJobId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateReplicationJobResponse

=head1 ATTRIBUTES


=head2 ReplicationJobId => Str

The unique identifier of the replication job.


=head2 _request_id => Str


=cut

1;