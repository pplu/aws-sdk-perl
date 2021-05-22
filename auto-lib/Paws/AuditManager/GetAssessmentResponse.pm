
package Paws::AuditManager::GetAssessmentResponse;
  use Moose;
  has Assessment => (is => 'ro', isa => 'Paws::AuditManager::Assessment', traits => ['NameInRequest'], request_name => 'assessment');
  has UserRole => (is => 'ro', isa => 'Paws::AuditManager::Role', traits => ['NameInRequest'], request_name => 'userRole');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetAssessmentResponse

=head1 ATTRIBUTES


=head2 Assessment => L<Paws::AuditManager::Assessment>




=head2 UserRole => L<Paws::AuditManager::Role>




=head2 _request_id => Str


=cut

