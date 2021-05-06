
package Paws::Textract::DetectDocumentTextResponse;
  use Moose;
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Block]');
  has DetectDocumentTextModelVersion => (is => 'ro', isa => 'Str');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::DetectDocumentTextResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[L<Paws::Textract::Block>]

An array of C<Block> objects that contain the text that's detected in
the document.


=head2 DetectDocumentTextModelVersion => Str




=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>

Metadata about the document. It contains the number of pages that are
detected in the document.


=head2 _request_id => Str


=cut

1;