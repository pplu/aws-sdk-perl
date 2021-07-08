
package Paws::Kendra::BatchPutDocumentResponse;
  use Moose;
  has FailedDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::BatchPutDocumentResponseFailedDocument]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchPutDocumentResponse

=head1 ATTRIBUTES


=head2 FailedDocuments => ArrayRef[L<Paws::Kendra::BatchPutDocumentResponseFailedDocument>]

A list of documents that were not added to the index because the
document failed a validation check. Each document contains an error
message that indicates why the document couldn't be added to the index.

If there was an error adding a document to an index the error is
reported in your AWS CloudWatch log. For more information, see
Monitoring Amazon Kendra with Amazon CloudWatch Logs
(https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html)


=head2 _request_id => Str


=cut

1;