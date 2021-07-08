
package Paws::Textract::GetDocumentAnalysisResponse;
  use Moose;
  has AnalyzeDocumentModelVersion => (is => 'ro', isa => 'Str');
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Block]');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetDocumentAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalyzeDocumentModelVersion => Str




=head2 Blocks => ArrayRef[L<Paws::Textract::Block>]

The results of the text-analysis operation.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>

Information about a document that Amazon Textract processed.
C<DocumentMetadata> is returned in every page of paginated responses
from an Amazon Textract video operation.


=head2 JobStatus => Str

The current status of the text detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"PARTIAL_SUCCESS">
=head2 NextToken => Str

If the response is truncated, Amazon Textract returns this token. You
can use this token in the subsequent request to retrieve the next set
of text detection results.


=head2 StatusMessage => Str

Returns if the detection job could not be completed. Contains
explanation for what error occured.


=head2 Warnings => ArrayRef[L<Paws::Textract::Warning>]

A list of warnings that occurred during the document-analysis
operation.


=head2 _request_id => Str


=cut

1;