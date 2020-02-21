package Paws::CognitoIdp::UserPoolClientType;
  use Moose;
  has AllowedOAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => 'Bool');
  has AllowedOAuthScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsConfigurationType');
  has CallbackURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientName => (is => 'ro', isa => 'Str');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DefaultRedirectURI => (is => 'ro', isa => 'Str');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LogoutURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreventUserExistenceErrors => (is => 'ro', isa => 'Str');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has SupportedIdentityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserPoolId => (is => 'ro', isa => 'Str');
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolClientType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolClientType object:

  $service_obj->Method(Att1 => { AllowedOAuthFlows => $value, ..., WriteAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolClientType object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedOAuthFlows

=head1 DESCRIPTION

Contains information about a user pool client.

=head1 ATTRIBUTES


=head2 AllowedOAuthFlows => ArrayRef[Str|Undef]

  The allowed OAuth flows.

Set to C<code> to initiate a code grant flow, which provides an
authorization code as the response. This code can be exchanged for
access tokens with the token endpoint.

Set to C<implicit> to specify that the client should get the access
token (and, optionally, ID token, based on scopes) directly.

Set to C<client_credentials> to specify that the client should get the
access token (and, optionally, ID token, based on scopes) from the
token endpoint using a combination of client and client_secret.


=head2 AllowedOAuthFlowsUserPoolClient => Bool

  Set to true if the client is allowed to follow the OAuth protocol when
interacting with Cognito user pools.


=head2 AllowedOAuthScopes => ArrayRef[Str|Undef]

  The allowed OAuth scopes. Possible values provided by OAuth are:
C<phone>, C<email>, C<openid>, and C<profile>. Possible values provided
by AWS are: C<aws.cognito.signin.user.admin>. Custom scopes created in
Resource Servers are also supported.


=head2 AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>

  The Amazon Pinpoint analytics configuration for the user pool client.


=head2 CallbackURLs => ArrayRef[Str|Undef]

  A list of allowed redirect (callback) URLs for the identity providers.

A redirect URI must:

=over

=item *

Be an absolute URI.

=item *

Be registered with the authorization server.

=item *

Not include a fragment component.

=back

See OAuth 2.0 - Redirection Endpoint
(https://tools.ietf.org/html/rfc6749#section-3.1.2).

Amazon Cognito requires HTTPS over HTTP except for http://localhost for
testing purposes only.

App callback URLs such as myapp://example are also supported.


=head2 ClientId => Str

  The ID of the client associated with the user pool.


=head2 ClientName => Str

  The client name from the user pool request of the client type.


=head2 ClientSecret => Str

  The client secret from the user pool request of the client type.


=head2 CreationDate => Str

  The date the user pool client was created.


=head2 DefaultRedirectURI => Str

  The default redirect URI. Must be in the C<CallbackURLs> list.

A redirect URI must:

=over

=item *

Be an absolute URI.

=item *

Be registered with the authorization server.

=item *

Not include a fragment component.

=back

See OAuth 2.0 - Redirection Endpoint
(https://tools.ietf.org/html/rfc6749#section-3.1.2).

Amazon Cognito requires HTTPS over HTTP except for http://localhost for
testing purposes only.

App callback URLs such as myapp://example are also supported.


=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

  The authentication flows that are supported by the user pool clients.
Flow names without the C<ALLOW_> prefix are deprecated in favor of new
names with the C<ALLOW_> prefix. Note that values with C<ALLOW_> prefix
cannot be used along with values without C<ALLOW_> prefix.

Valid values include:

=over

=item *

C<ALLOW_ADMIN_USER_PASSWORD_AUTH>: Enable admin based user password
authentication flow C<ADMIN_USER_PASSWORD_AUTH>. This setting replaces
the C<ADMIN_NO_SRP_AUTH> setting. With this authentication flow,
Cognito receives the password in the request instead of using the SRP
(Secure Remote Password protocol) protocol to verify passwords.

=item *

C<ALLOW_CUSTOM_AUTH>: Enable Lambda trigger based authentication.

=item *

C<ALLOW_USER_PASSWORD_AUTH>: Enable user password-based authentication.
In this flow, Cognito receives the password in the request instead of
using the SRP protocol to verify passwords.

=item *

C<ALLOW_USER_SRP_AUTH>: Enable SRP based authentication.

=item *

C<ALLOW_REFRESH_TOKEN_AUTH>: Enable authflow to refresh tokens.

=back



=head2 LastModifiedDate => Str

  The date the user pool client was last modified.


=head2 LogoutURLs => ArrayRef[Str|Undef]

  A list of allowed logout URLs for the identity providers.


=head2 PreventUserExistenceErrors => Str

  Use this setting to choose which errors and responses are returned by
Cognito APIs during authentication, account confirmation, and password
recovery when the user does not exist in the user pool. When set to
C<ENABLED> and the user does not exist, authentication returns an error
indicating either the username or password was incorrect, and account
confirmation and password recovery return a response indicating a code
was sent to a simulated destination. When set to C<LEGACY>, those APIs
will return a C<UserNotFoundException> exception if the user does not
exist in the user pool.

Valid values include:

=over

=item *

C<ENABLED> - This prevents user existence-related errors.

=item *

C<LEGACY> - This represents the old behavior of Cognito where user
existence related errors are not prevented.

=back

This setting affects the behavior of following APIs:

=over

=item *

AdminInitiateAuth

=item *

AdminRespondToAuthChallenge

=item *

InitiateAuth

=item *

RespondToAuthChallenge

=item *

ForgotPassword

=item *

ConfirmForgotPassword

=item *

ConfirmSignUp

=item *

ResendConfirmationCode

=back

After February 15th 2020, the value of C<PreventUserExistenceErrors>
will default to C<ENABLED> for newly created user pool clients if no
value is provided.


=head2 ReadAttributes => ArrayRef[Str|Undef]

  The Read-only attributes.


=head2 RefreshTokenValidity => Int

  The time limit, in days, after which the refresh token is no longer
valid and cannot be used.


=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

  A list of provider names for the identity providers that are supported
on this client.


=head2 UserPoolId => Str

  The user pool ID for the user pool client.


=head2 WriteAttributes => ArrayRef[Str|Undef]

  The writeable attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

