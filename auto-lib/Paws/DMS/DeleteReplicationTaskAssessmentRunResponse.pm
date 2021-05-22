
package Paws::DMS::DeleteReplicationTaskAssessmentRunResponse;
  use Moose;
  has ReplicationTaskAssessmentRun => (is => 'ro', isa => 'Paws::DMS::ReplicationTaskAssessmentRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteReplicationTaskAssessmentRunResponse

=head1 ATTRIBUTES


=head2 ReplicationTaskAssessmentRun => L<Paws::DMS::ReplicationTaskAssessmentRun>

The C<ReplicationTaskAssessmentRun> object for the deleted assessment
run.


=head2 _request_id => Str


=cut

1;