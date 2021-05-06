
package Paws::CloudDirectory::ListIncomingTypedLinksResponse;
  use Moose;
  has LinkSpecifiers => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkSpecifier]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListIncomingTypedLinksResponse

=head1 ATTRIBUTES


=head2 LinkSpecifiers => ArrayRef[L<Paws::CloudDirectory::TypedLinkSpecifier>]

Returns one or more typed link specifiers as output.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

