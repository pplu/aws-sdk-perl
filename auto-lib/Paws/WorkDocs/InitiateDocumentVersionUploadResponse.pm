
package Paws::WorkDocs::InitiateDocumentVersionUploadResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::WorkDocs::DocumentMetadata');
  has UploadMetadata => (is => 'ro', isa => 'Paws::WorkDocs::UploadMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::InitiateDocumentVersionUploadResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::WorkDocs::DocumentMetadata>

The document metadata.


=head2 UploadMetadata => L<Paws::WorkDocs::UploadMetadata>

The upload metadata.


=head2 _request_id => Str


=cut

