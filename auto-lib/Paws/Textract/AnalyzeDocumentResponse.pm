
package Paws::Textract::AnalyzeDocumentResponse;
  use Moose;
  has AnalyzeDocumentModelVersion => (is => 'ro', isa => 'Str');
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Block]');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has HumanLoopActivationOutput => (is => 'ro', isa => 'Paws::Textract::HumanLoopActivationOutput');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeDocumentResponse

=head1 ATTRIBUTES


=head2 AnalyzeDocumentModelVersion => Str

The version of the model used to analyze the document.


=head2 Blocks => ArrayRef[L<Paws::Textract::Block>]

The items that are detected and analyzed by C<AnalyzeDocument>.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>

Metadata about the analyzed document. An example is the number of
pages.


=head2 HumanLoopActivationOutput => L<Paws::Textract::HumanLoopActivationOutput>

Shows the results of the human in the loop evaluation.


=head2 _request_id => Str


=cut

1;