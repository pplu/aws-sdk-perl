
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




=head2 ReplicationJobList => ArrayRef[L<Paws::SMS::ReplicationJob>]




=head2 _request_id => Str


=cut

1;