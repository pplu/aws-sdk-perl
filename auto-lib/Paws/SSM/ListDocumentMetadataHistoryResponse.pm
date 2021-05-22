
package Paws::SSM::ListDocumentMetadataHistoryResponse;
  use Moose;
  has Author => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::SSM::DocumentMetadataResponseInfo');
  has Name => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListDocumentMetadataHistoryResponse

=head1 ATTRIBUTES


=head2 Author => Str

The user ID of the person in the organization who requested the
document review.


=head2 DocumentVersion => Str

The version of the document.


=head2 Metadata => L<Paws::SSM::DocumentMetadataResponseInfo>

Information about the response to the document approval request.


=head2 Name => Str

The name of the document.


=head2 NextToken => Str

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.


=head2 _request_id => Str


=cut

1;