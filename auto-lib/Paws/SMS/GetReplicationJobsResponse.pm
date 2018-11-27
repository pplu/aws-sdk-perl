
package Paws::SMS::GetReplicationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReplicationJobList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationJob]', traits => ['NameInRequest'], request_name => 'replicationJobList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ReplicationJobList => ArrayRef[L<Paws::SMS::ReplicationJob>]

Information about the replication jobs.


=head2 _request_id => Str


=cut

1;