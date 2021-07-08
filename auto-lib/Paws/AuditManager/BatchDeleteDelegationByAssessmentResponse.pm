
package Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::BatchDeleteDelegationByAssessmentError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::AuditManager::BatchDeleteDelegationByAssessmentError>]

A list of errors returned by the C<BatchDeleteDelegationByAssessment>
API.


=head2 _request_id => Str


=cut

