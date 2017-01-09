
package Paws::SSM::UpdateDocumentResult;
  use Moose;
  has DocumentDescription => (is => 'ro', isa => 'Paws::SSM::DocumentDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocumentResult

=head1 ATTRIBUTES


=head2 DocumentDescription => L<Paws::SSM::DocumentDescription>

A description of the document that was updated.


=head2 _request_id => Str


=cut

1;