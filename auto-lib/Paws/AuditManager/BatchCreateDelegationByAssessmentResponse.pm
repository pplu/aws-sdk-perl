
package Paws::AuditManager::BatchCreateDelegationByAssessmentResponse;
  use Moose;
  has Delegations => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Delegation]', traits => ['NameInRequest'], request_name => 'delegations');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::BatchCreateDelegationByAssessmentError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchCreateDelegationByAssessmentResponse

=head1 ATTRIBUTES


=head2 Delegations => ArrayRef[L<Paws::AuditManager::Delegation>]

The delegations associated with the assessment.


=head2 Errors => ArrayRef[L<Paws::AuditManager::BatchCreateDelegationByAssessmentError>]

A list of errors returned by the C<BatchCreateDelegationByAssessment>
API.


=head2 _request_id => Str


=cut

