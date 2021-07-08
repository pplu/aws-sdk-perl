
package Paws::AuditManager::UpdateAssessmentControlSetStatusResponse;
  use Moose;
  has ControlSet => (is => 'ro', isa => 'Paws::AuditManager::AssessmentControlSet', traits => ['NameInRequest'], request_name => 'controlSet');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentControlSetStatusResponse

=head1 ATTRIBUTES


=head2 ControlSet => L<Paws::AuditManager::AssessmentControlSet>

The name of the updated control set returned by the
C<UpdateAssessmentControlSetStatus> API.


=head2 _request_id => Str


=cut

