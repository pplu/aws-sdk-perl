
package Paws::SSOOidc::CreateTokenResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken');
  has ExpiresIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresIn');
  has IdToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idToken');
  has RefreshToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'refreshToken');
  has TokenType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::CreateTokenResponse

=head1 ATTRIBUTES


=head2 AccessToken => Str

An opaque token to access AWS SSO resources assigned to a user.


=head2 ExpiresIn => Int

Indicates the time in seconds when an access token will expire.


=head2 IdToken => Str

The identifier of the user that associated with the access token, if
present.


=head2 RefreshToken => Str

A token that, if present, can be used to refresh a previously issued
access token that might have expired.


=head2 TokenType => Str

Used to notify the client that the returned token is an access token.
The supported type is C<BearerToken>.


=head2 _request_id => Str


=cut

