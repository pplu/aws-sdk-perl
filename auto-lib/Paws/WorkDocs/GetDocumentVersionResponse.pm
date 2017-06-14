
package Paws::WorkDocs::GetDocumentVersionResponse;
  use Moose;
  has CustomMetadata => (is => 'ro', isa => 'Paws::WorkDocs::CustomMetadataMap');
  has Metadata => (is => 'ro', isa => 'Paws::WorkDocs::DocumentVersionMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentVersionResponse

=head1 ATTRIBUTES


=head2 CustomMetadata => L<Paws::WorkDocs::CustomMetadataMap>

The custom metadata on the document version.


=head2 Metadata => L<Paws::WorkDocs::DocumentVersionMetadata>

The version metadata.


=head2 _request_id => Str


=cut

