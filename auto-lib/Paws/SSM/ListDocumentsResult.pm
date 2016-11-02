
package Paws::SSM::ListDocumentsResult;
  use Moose;
  has DocumentIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::SSM::DocumentIdentifier]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListDocumentsResult

=head1 ATTRIBUTES


=head2 DocumentIdentifiers => ArrayRef[L<Paws::SSM::DocumentIdentifier>]

The names of the SSM documents.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;