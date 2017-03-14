
package Paws::WorkDocs::DescribeDocumentVersionsResponse;
  use Moose;
  has DocumentVersions => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::DocumentVersionMetadata]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeDocumentVersionsResponse

=head1 ATTRIBUTES


=head2 DocumentVersions => ArrayRef[L<Paws::WorkDocs::DocumentVersionMetadata>]

The document versions.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

