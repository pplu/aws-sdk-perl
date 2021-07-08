
package Paws::DMS::StartReplicationTaskAssessmentRunResponse;
  use Moose;
  has ReplicationTaskAssessmentRun => (is => 'ro', isa => 'Paws::DMS::ReplicationTaskAssessmentRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTaskAssessmentRunResponse

=head1 ATTRIBUTES


=head2 ReplicationTaskAssessmentRun => L<Paws::DMS::ReplicationTaskAssessmentRun>

The premigration assessment run that was started.


=head2 _request_id => Str


=cut

1;