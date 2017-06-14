
package Paws::WorkDocs::GetDocumentResponse;
  use Moose;
  has CustomMetadata => (is => 'ro', isa => 'Paws::WorkDocs::CustomMetadataMap');
  has Metadata => (is => 'ro', isa => 'Paws::WorkDocs::DocumentMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentResponse

=head1 ATTRIBUTES


=head2 CustomMetadata => L<Paws::WorkDocs::CustomMetadataMap>

The custom metadata on the document.


=head2 Metadata => L<Paws::WorkDocs::DocumentMetadata>

The metadata details of the document.


=head2 _request_id => Str


=cut

