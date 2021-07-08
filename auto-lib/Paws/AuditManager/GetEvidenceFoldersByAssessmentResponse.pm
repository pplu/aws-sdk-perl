
package Paws::AuditManager::GetEvidenceFoldersByAssessmentResponse;
  use Moose;
  has EvidenceFolders => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentEvidenceFolder]', traits => ['NameInRequest'], request_name => 'evidenceFolders');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceFoldersByAssessmentResponse

=head1 ATTRIBUTES


=head2 EvidenceFolders => ArrayRef[L<Paws::AuditManager::AssessmentEvidenceFolder>]

The list of evidence folders returned by the
C<GetEvidenceFoldersByAssessment> API.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

