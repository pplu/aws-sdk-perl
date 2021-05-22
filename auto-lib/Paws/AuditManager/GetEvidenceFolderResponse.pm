
package Paws::AuditManager::GetEvidenceFolderResponse;
  use Moose;
  has EvidenceFolder => (is => 'ro', isa => 'Paws::AuditManager::AssessmentEvidenceFolder', traits => ['NameInRequest'], request_name => 'evidenceFolder');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceFolderResponse

=head1 ATTRIBUTES


=head2 EvidenceFolder => L<Paws::AuditManager::AssessmentEvidenceFolder>

The folder in which evidence is stored.


=head2 _request_id => Str


=cut

