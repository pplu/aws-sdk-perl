
package Paws::AuditManager::GetEvidenceResponse;
  use Moose;
  has Evidence => (is => 'ro', isa => 'Paws::AuditManager::Evidence', traits => ['NameInRequest'], request_name => 'evidence');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceResponse

=head1 ATTRIBUTES


=head2 Evidence => L<Paws::AuditManager::Evidence>

The evidence returned by the C<GetEvidenceResponse> API.


=head2 _request_id => Str


=cut

