
package Paws::Textract::StartDocumentAnalysisResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartDocumentAnalysisResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier for the document text detection job. Use C<JobId> to
identify the job in a subsequent call to C<GetDocumentAnalysis>.


=head2 _request_id => Str


=cut

1;