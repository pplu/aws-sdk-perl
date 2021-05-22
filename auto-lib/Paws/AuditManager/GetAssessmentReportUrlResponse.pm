
package Paws::AuditManager::GetAssessmentReportUrlResponse;
  use Moose;
  has PreSignedUrl => (is => 'ro', isa => 'Paws::AuditManager::URL', traits => ['NameInRequest'], request_name => 'preSignedUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetAssessmentReportUrlResponse

=head1 ATTRIBUTES


=head2 PreSignedUrl => L<Paws::AuditManager::URL>




=head2 _request_id => Str


=cut

