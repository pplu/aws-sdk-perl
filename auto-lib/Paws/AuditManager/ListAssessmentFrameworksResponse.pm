
package Paws::AuditManager::ListAssessmentFrameworksResponse;
  use Moose;
  has FrameworkMetadataList => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::AssessmentFrameworkMetadata]', traits => ['NameInRequest'], request_name => 'frameworkMetadataList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListAssessmentFrameworksResponse

=head1 ATTRIBUTES


=head2 FrameworkMetadataList => ArrayRef[L<Paws::AuditManager::AssessmentFrameworkMetadata>]

The list of metadata objects for the specified framework.


=head2 NextToken => Str

The pagination token used to fetch the next set of results.


=head2 _request_id => Str


=cut

