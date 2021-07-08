
package Paws::AuditManager::ListAssessmentsResponse;
  use Moose;
  has AssessmentMetadata => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentMetadataItem]', traits => ['NameInRequest'], request_name => 'assessmentMetadata');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentsResponse

=head1 ATTRIBUTES


=head2 AssessmentMetadata => ArrayRef[L<Paws::AuditManager::AssessmentMetadataItem>]

The metadata associated with the assessment.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

