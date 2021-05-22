
package Paws::AuditManager::CreateAssessmentReportResponse;
  use Moose;
  has AssessmentReport => (is => 'ro', isa => 'Paws::AuditManager::AssessmentReport', traits => ['NameInRequest'], request_name => 'assessmentReport');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateAssessmentReportResponse

=head1 ATTRIBUTES


=head2 AssessmentReport => L<Paws::AuditManager::AssessmentReport>

The new assessment report returned by the C<CreateAssessmentReport>
API.


=head2 _request_id => Str


=cut

