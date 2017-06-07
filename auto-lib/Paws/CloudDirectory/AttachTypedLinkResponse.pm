
package Paws::CloudDirectory::AttachTypedLinkResponse;
  use Moose;
  has TypedLinkSpecifier => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSpecifier');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachTypedLinkResponse

=head1 ATTRIBUTES


=head2 TypedLinkSpecifier => L<Paws::CloudDirectory::TypedLinkSpecifier>

Returns a typed link specifier as output.


=head2 _request_id => Str


=cut

