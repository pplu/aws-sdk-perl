
package Paws::SMS::GetReplicationRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReplicationJob => (is => 'ro', isa => 'Paws::SMS::ReplicationJob', traits => ['NameInRequest'], request_name => 'replicationJob' );
  has ReplicationRunList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationRun]', traits => ['NameInRequest'], request_name => 'replicationRunList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ReplicationJob => L<Paws::SMS::ReplicationJob>

Information about the replication job.


=head2 ReplicationRunList => ArrayRef[L<Paws::SMS::ReplicationRun>]

Information about the replication runs.


=head2 _request_id => Str


=cut

1;