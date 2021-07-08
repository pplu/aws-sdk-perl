
package Paws::Kendra::BatchGetDocumentStatusResponse;
  use Moose;
  has DocumentStatusList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Status]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::BatchGetDocumentStatusResponseError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchGetDocumentStatusResponse

=head1 ATTRIBUTES


=head2 DocumentStatusList => ArrayRef[L<Paws::Kendra::Status>]

The status of documents. The status indicates if the document is
waiting to be indexed, is in the process of indexing, has completed
indexing, or failed indexing. If a document failed indexing, the status
provides the reason why.


=head2 Errors => ArrayRef[L<Paws::Kendra::BatchGetDocumentStatusResponseError>]

A list of documents that Amazon Kendra couldn't get the status for. The
list includes the ID of the document and the reason that the status
couldn't be found.


=head2 _request_id => Str


=cut

1;