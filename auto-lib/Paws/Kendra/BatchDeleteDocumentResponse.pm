
package Paws::Kendra::BatchDeleteDocumentResponse;
  use Moose;
  has FailedDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::BatchDeleteDocumentResponseFailedDocument]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchDeleteDocumentResponse

=head1 ATTRIBUTES


=head2 FailedDocuments => ArrayRef[L<Paws::Kendra::BatchDeleteDocumentResponseFailedDocument>]

A list of documents that could not be removed from the index. Each
entry contains an error message that indicates why the document
couldn't be removed from the index.


=head2 _request_id => Str


=cut

1;