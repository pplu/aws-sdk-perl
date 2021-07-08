
package Paws::LicenseManager::CreateTokenResponse;
  use Moose;
  has Token => (is => 'ro', isa => 'Str');
  has TokenId => (is => 'ro', isa => 'Str');
  has TokenType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateTokenResponse

=head1 ATTRIBUTES


=head2 Token => Str

Refresh token, encoded as a JWT token.


=head2 TokenId => Str

Token ID.


=head2 TokenType => Str

Token type.

Valid values are: C<"REFRESH_TOKEN">
=head2 _request_id => Str


=cut

1;