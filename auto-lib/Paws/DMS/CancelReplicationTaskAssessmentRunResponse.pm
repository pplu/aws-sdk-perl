
package Paws::DMS::CancelReplicationTaskAssessmentRunResponse;
  use Moose;
  has ReplicationTaskAssessmentRun => (is => 'ro', isa => 'Paws::DMS::ReplicationTaskAssessmentRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CancelReplicationTaskAssessmentRunResponse

=head1 ATTRIBUTES


=head2 ReplicationTaskAssessmentRun => L<Paws::DMS::ReplicationTaskAssessmentRun>

The C<ReplicationTaskAssessmentRun> object for the canceled assessment
run.


=head2 _request_id => Str


=cut

1;