
package Paws::SSOOidc::RegisterClientResponse;
  use Moose;
  has AuthorizationEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationEndpoint');
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId');
  has ClientIdIssuedAt => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'clientIdIssuedAt');
  has ClientSecret => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientSecret');
  has ClientSecretExpiresAt => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'clientSecretExpiresAt');
  has TokenEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::RegisterClientResponse

=head1 ATTRIBUTES


=head2 AuthorizationEndpoint => Str

The endpoint where the client can request authorization.


=head2 ClientId => Str

The unique identifier string for each client. This client uses this
identifier to get authenticated by the service in subsequent calls.


=head2 ClientIdIssuedAt => Int

Indicates the time at which the C<clientId> and C<clientSecret> were
issued.


=head2 ClientSecret => Str

A secret string generated for the client. The client will use this
string to get authenticated by the service in subsequent calls.


=head2 ClientSecretExpiresAt => Int

Indicates the time at which the C<clientId> and C<clientSecret> will
become invalid.


=head2 TokenEndpoint => Str

The endpoint where the client can get an access token.


=head2 _request_id => Str


=cut

