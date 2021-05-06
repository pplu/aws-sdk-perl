
package Paws::Textract::StartDocumentTextDetectionResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartDocumentTextDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the text detection job for the document. Use C<JobId>
to identify the job in a subsequent call to
C<GetDocumentTextDetection>. A C<JobId> value is only valid for 7 days.


=head2 _request_id => Str


=cut

1;