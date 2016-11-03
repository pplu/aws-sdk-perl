
package Paws::SMS::GetReplicationRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has ReplicationJob => (is => 'ro', isa => 'Paws::SMS::ReplicationJob', traits => ['Unwrapped'], xmlname => 'replicationJob' );
  has ReplicationRunList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationRun]', traits => ['Unwrapped'], xmlname => 'replicationRunList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ReplicationJob => L<Paws::SMS::ReplicationJob>




=head2 ReplicationRunList => ArrayRef[L<Paws::SMS::ReplicationRun>]




=head2 _request_id => Str


=cut

1;