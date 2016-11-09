
package Paws::SMS::StartOnDemandReplicationRunResponse;
  use Moose;
  has ReplicationRunId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'replicationRunId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::StartOnDemandReplicationRunResponse

=head1 ATTRIBUTES


=head2 ReplicationRunId => Str




=head2 _request_id => Str


=cut

1;