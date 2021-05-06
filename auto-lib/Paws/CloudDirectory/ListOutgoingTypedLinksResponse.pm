
package Paws::CloudDirectory::ListOutgoingTypedLinksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TypedLinkSpecifiers => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkSpecifier]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListOutgoingTypedLinksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 TypedLinkSpecifiers => ArrayRef[L<Paws::CloudDirectory::TypedLinkSpecifier>]

Returns a typed link specifier as output.


=head2 _request_id => Str


=cut

