
package Paws::AuditManager::GetAssessmentFrameworkResponse;
  use Moose;
  has Framework => (is => 'ro', isa => 'Paws::AuditManager::Framework', traits => ['NameInRequest'], request_name => 'framework');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetAssessmentFrameworkResponse

=head1 ATTRIBUTES


=head2 Framework => L<Paws::AuditManager::Framework>

The framework returned by the C<GetAssessmentFramework> API.


=head2 _request_id => Str


=cut

