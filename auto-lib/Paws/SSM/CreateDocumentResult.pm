
package Paws::SSM::CreateDocumentResult;
  use Moose;
  has DocumentDescription => (is => 'ro', isa => 'Paws::SSM::DocumentDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateDocumentResult

=head1 ATTRIBUTES


=head2 DocumentDescription => L<Paws::SSM::DocumentDescription>

Information about the SSM document.


=head2 _request_id => Str


=cut

1;