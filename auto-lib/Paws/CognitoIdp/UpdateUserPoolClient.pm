
package Paws::CognitoIdp::UpdateUserPoolClient;
  use Moose;
  has AccessTokenValidity => (is => 'ro', isa => 'Int');
  has AllowedOAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => 'Bool');
  has AllowedOAuthScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsConfigurationType');
  has CallbackURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientName => (is => 'ro', isa => 'Str');
  has DefaultRedirectURI => (is => 'ro', isa => 'Str');
  has EnableTokenRevocation => (is => 'ro', isa => 'Bool');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IdTokenValidity => (is => 'ro', isa => 'Int');
  has LogoutURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreventUserExistenceErrors => (is => 'ro', isa => 'Str');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has SupportedIdentityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TokenValidityUnits => (is => 'ro', isa => 'Paws::CognitoIdp::TokenValidityUnitsType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPoolClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolClient - Arguments for method UpdateUserPoolClient on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPoolClient on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPoolClient.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserPoolClientResponse = $cognito -idp->UpdateUserPoolClient(
      ClientId            => 'MyClientIdType',
      UserPoolId          => 'MyUserPoolIdType',
      AccessTokenValidity => 1,                    # OPTIONAL
      AllowedOAuthFlows   => [
        'code', ...    # values: code, implicit, client_credentials
      ],    # OPTIONAL
      AllowedOAuthFlowsUserPoolClient => 1,    # OPTIONAL
      AllowedOAuthScopes              => [
        'MyScopeType', ...                     # min: 1, max: 256
      ],    # OPTIONAL
      AnalyticsConfiguration => {
        ApplicationArn => 'MyArnType',          # min: 20, max: 2048; OPTIONAL
        ApplicationId  => 'MyHexStringType',    # OPTIONAL
        ExternalId     => 'MyStringType',       # OPTIONAL
        RoleArn        => 'MyArnType',          # min: 20, max: 2048; OPTIONAL
        UserDataShared => 1,
      },    # OPTIONAL
      CallbackURLs => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      ClientName            => 'MyClientNameType',     # OPTIONAL
      DefaultRedirectURI    => 'MyRedirectUrlType',    # OPTIONAL
      EnableTokenRevocation => 1,                      # OPTIONAL
      ExplicitAuthFlows     => [
        'ADMIN_NO_SRP_AUTH',
        ... # values: ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH
      ],    # OPTIONAL
      IdTokenValidity => 1,    # OPTIONAL
      LogoutURLs      => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      PreventUserExistenceErrors => 'LEGACY',    # OPTIONAL
      ReadAttributes             => [
        'MyClientPermissionType', ...            # min: 1, max: 2048
      ],    # OPTIONAL
      RefreshTokenValidity       => 1,    # OPTIONAL
      SupportedIdentityProviders => [
        'MyProviderNameType', ...         # min: 1, max: 32
      ],    # OPTIONAL
      TokenValidityUnits => {
        AccessToken =>
          'seconds',    # values: seconds, minutes, hours, days; OPTIONAL
        IdToken => 'seconds',  # values: seconds, minutes, hours, days; OPTIONAL
        RefreshToken =>
          'seconds',           # values: seconds, minutes, hours, days; OPTIONAL
      },    # OPTIONAL
      WriteAttributes => [
        'MyClientPermissionType', ...    # min: 1, max: 2048
      ],    # OPTIONAL
    );

    # Results:
    my $UserPoolClient = $UpdateUserPoolClientResponse->UserPoolClient;

    # Returns a L<Paws::CognitoIdp::UpdateUserPoolClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateUserPoolClient>

=head1 ATTRIBUTES


=head2 AccessTokenValidity => Int

The time limit, after which the access token is no longer valid and
cannot be used.



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

The Amazon Pinpoint analytics configuration for collecting metrics for
this user pool.

In regions where Pinpoint is not available, Cognito User Pools only
supports sending events to Amazon Pinpoint projects in us-east-1. In
regions where Pinpoint is available, Cognito User Pools will support
sending events to Amazon Pinpoint projects within that same region.



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



=head2 B<REQUIRED> ClientId => Str

The ID of the client associated with the user pool.



=head2 ClientName => Str

The client name from the update user pool client request.



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



=head2 EnableTokenRevocation => Bool

Enables or disables token revocation. For more information about
revoking tokens, see RevokeToken
(https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).



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




=head2 IdTokenValidity => Int

The time limit, after which the ID token is no longer valid and cannot
be used.



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

After February 15th 2020, the value of C<PreventUserExistenceErrors>
will default to C<ENABLED> for newly created user pool clients if no
value is provided.

Valid values are: C<"LEGACY">, C<"ENABLED">

=head2 ReadAttributes => ArrayRef[Str|Undef]

The read-only attributes of the user pool.



=head2 RefreshTokenValidity => Int

The time limit, in days, after which the refresh token is no longer
valid and cannot be used.



=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

A list of provider names for the identity providers that are supported
on this client.



=head2 TokenValidityUnits => L<Paws::CognitoIdp::TokenValidityUnitsType>

The units in which the validity times are represented in. Default for
RefreshToken is days, and default for ID and access tokens are hours.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to update the user
pool client.



=head2 WriteAttributes => ArrayRef[Str|Undef]

The writeable attributes of the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

