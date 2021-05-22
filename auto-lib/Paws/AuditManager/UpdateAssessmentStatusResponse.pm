
package Paws::AuditManager::UpdateAssessmentStatusResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::AuditManager::Assessment', traits => ['NameInRequest'], request_name => 'assessment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentStatusResponse

=head1 ATTRIBUTES


=head2 Assessment => L<Paws::AuditManager::Assessment>

The name of the updated assessment returned by the
C<UpdateAssessmentStatus> API.


=head2 _request_id => Str


=cut

