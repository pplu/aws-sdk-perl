
package Paws::SSM::ListDocumentVersionsResult;
  use Moose;
  has DocumentVersions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::DocumentVersionInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListDocumentVersionsResult

=head1 ATTRIBUTES


=head2 DocumentVersions => ArrayRef[L<Paws::SSM::DocumentVersionInfo>]

The document versions.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;