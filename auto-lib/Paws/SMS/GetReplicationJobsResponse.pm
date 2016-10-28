
package Paws::SMS::GetReplicationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has ReplicationJobList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationJob]', traits => ['Unwrapped'], xmlname => 'replicationJobList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetReplicationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str





=head2 ReplicationJobList => ArrayRef[L<Paws::SMS::ReplicationJob>]






=cut

1;