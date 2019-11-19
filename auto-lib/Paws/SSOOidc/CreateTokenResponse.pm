
package Paws::SSOOidc::CreateTokenResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SSOOidc::Types qw//;
  has AccessToken => (is => 'ro', isa => Str);
  has ExpiresIn => (is => 'ro', isa => Int);
  has IdToken => (is => 'ro', isa => Str);
  has RefreshToken => (is => 'ro', isa => Str);
  has TokenType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TokenType' => {
                                'type' => 'Str'
                              },
               'ExpiresIn' => {
                                'type' => 'Int'
                              },
               'IdToken' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RefreshToken' => {
                                   'type' => 'Str'
                                 },
               'AccessToken' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TokenType' => 'tokenType',
                       'IdToken' => 'idToken',
                       'ExpiresIn' => 'expiresIn',
                       'RefreshToken' => 'refreshToken',
                       'AccessToken' => 'accessToken'
                     }
}
;
    return $Params_map;
  }

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

