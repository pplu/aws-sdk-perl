
package Paws::AuditManager::GetEvidenceByEvidenceFolderResponse;
  use Moose;
  has Evidence => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Evidence]', traits => ['NameInRequest'], request_name => 'evidence');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceByEvidenceFolderResponse

=head1 ATTRIBUTES


=head2 Evidence => ArrayRef[L<Paws::AuditManager::Evidence>]

The list of evidence returned by the C<GetEvidenceByEvidenceFolder>
API.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

