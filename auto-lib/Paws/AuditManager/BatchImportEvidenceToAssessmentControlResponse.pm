
package Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::BatchImportEvidenceToAssessmentControlError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::AuditManager::BatchImportEvidenceToAssessmentControlError>]

A list of errors returned by the
C<BatchImportEvidenceToAssessmentControl> API.


=head2 _request_id => Str


=cut

