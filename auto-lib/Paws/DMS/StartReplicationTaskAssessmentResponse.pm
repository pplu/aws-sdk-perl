
package Paws::DMS::StartReplicationTaskAssessmentResponse;
  use Moose;
  has ReplicationTask => (is => 'ro', isa => 'Paws::DMS::ReplicationTask');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTaskAssessmentResponse

=head1 ATTRIBUTES


=head2 ReplicationTask => L<Paws::DMS::ReplicationTask>

The assessed replication task.


=head2 _request_id => Str


=cut

1;