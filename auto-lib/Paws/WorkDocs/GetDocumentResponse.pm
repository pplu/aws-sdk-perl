
package Paws::WorkDocs::GetDocumentResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::WorkDocs::DocumentMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::WorkDocs::DocumentMetadata>

The document object.


=head2 _request_id => Str


=cut

