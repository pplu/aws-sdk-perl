
package Paws::Textract::AnalyzeDocumentResponse;
  use Moose;
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Block]');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeDocumentResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[L<Paws::Textract::Block>]

The text that's detected and analyzed by C<AnalyzeDocument>.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>

Metadata about the analyzed document. An example is the number of
pages.


=head2 _request_id => Str


=cut

1;