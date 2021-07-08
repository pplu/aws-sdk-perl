
package Paws::AuditManager::UpdateAssessmentControlResponse;
  use Moose;
  has Control => (is => 'ro', isa => 'Paws::AuditManager::AssessmentControl', traits => ['NameInRequest'], request_name => 'control');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentControlResponse

=head1 ATTRIBUTES


=head2 Control => L<Paws::AuditManager::AssessmentControl>

The name of the updated control set returned by the
C<UpdateAssessmentControl> API.


=head2 _request_id => Str


=cut

