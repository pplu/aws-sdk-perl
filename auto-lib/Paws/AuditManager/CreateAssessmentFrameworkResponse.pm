
package Paws::AuditManager::CreateAssessmentFrameworkResponse;
  use Moose;
  has Framework => (is => 'ro', isa => 'Paws::AuditManager::Framework', traits => ['NameInRequest'], request_name => 'framework');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateAssessmentFrameworkResponse

=head1 ATTRIBUTES


=head2 Framework => L<Paws::AuditManager::Framework>

The name of the new framework returned by the
C<CreateAssessmentFramework> API.


=head2 _request_id => Str


=cut

