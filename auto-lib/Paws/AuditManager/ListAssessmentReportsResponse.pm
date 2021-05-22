
package Paws::AuditManager::ListAssessmentReportsResponse;
  use Moose;
  has AssessmentReports => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentReportMetadata]', traits => ['NameInRequest'], request_name => 'assessmentReports');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentReportsResponse

=head1 ATTRIBUTES


=head2 AssessmentReports => ArrayRef[L<Paws::AuditManager::AssessmentReportMetadata>]

The list of assessment reports returned by the C<ListAssessmentReports>
API.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

