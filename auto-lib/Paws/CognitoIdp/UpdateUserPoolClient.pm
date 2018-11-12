
package Paws::CognitoIdp::UpdateUserPoolClient;
  use Moose;
  has AllowedOAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => 'Bool');
  has AllowedOAuthScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsConfigurationType');
  has CallbackURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientName => (is => 'ro', isa => 'Str');
  has DefaultRedirectURI => (is => 'ro', isa => 'Str');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LogoutURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has SupportedIdentityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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
      ClientId          => 'MyClientIdType',
      UserPoolId        => 'MyUserPoolIdType',
      AllowedOAuthFlows => [
        'code', ...    # values: code, implicit, client_credentials
      ],               # OPTIONAL
      AllowedOAuthFlowsUserPoolClient => 1,    # OPTIONAL
      AllowedOAuthScopes              => [
        'MyScopeType', ...                     # min: 1, max: 256
      ],                                       # OPTIONAL
      AnalyticsConfiguration => {
        ApplicationId  => 'MyHexStringType',
        ExternalId     => 'MyStringType',
        RoleArn        => 'MyArnType',         # min: 20, max: 2048
        UserDataShared => 1,
      },    # OPTIONAL
      CallbackURLs => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],                            # OPTIONAL
      ClientName         => 'MyClientNameType',     # OPTIONAL
      DefaultRedirectURI => 'MyRedirectUrlType',    # OPTIONAL
      ExplicitAuthFlows  => [
        'ADMIN_NO_SRP_AUTH',
        ... # values: ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH
      ],    # OPTIONAL
      LogoutURLs => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],                            # OPTIONAL
      ReadAttributes => [
        'MyClientPermissionType', ...    # min: 1, max: 2048
      ],                                 # OPTIONAL
      RefreshTokenValidity       => 1,   # OPTIONAL
      SupportedIdentityProviders => [
        'MyProviderNameType', ...        # min: 1, max: 32
      ],                                 # OPTIONAL
      WriteAttributes => [
        'MyClientPermissionType', ...    # min: 1, max: 2048
      ],                                 # OPTIONAL
    );

    # Results:
    my $UserPoolClient = $UpdateUserPoolClientResponse->UserPoolClient;

    # Returns a L<Paws::CognitoIdp::UpdateUserPoolClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateUserPoolClient>

=head1 ATTRIBUTES


=head2 AllowedOAuthFlows => ArrayRef[Str|Undef]

Set to C<code> to initiate a code grant flow, which provides an
authorization code as the response. This code can be exchanged for
access tokens with the token endpoint.

Set to C<token> to specify that the client should get the access token
(and, optionally, ID token, based on scopes) directly.



=head2 AllowedOAuthFlowsUserPoolClient => Bool

Set to TRUE if the client is allowed to follow the OAuth protocol when
interacting with Cognito user pools.



=head2 AllowedOAuthScopes => ArrayRef[Str|Undef]

A list of allowed C<OAuth> scopes. Currently supported values are
C<"phone">, C<"email">, C<"openid">, and C<"Cognito">.



=head2 AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>

The Amazon Pinpoint analytics configuration for collecting metrics for
this user pool.



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



=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

Explicit authentication flows.



=head2 LogoutURLs => ArrayRef[Str|Undef]

A list of allowed logout URLs for the identity providers.



=head2 ReadAttributes => ArrayRef[Str|Undef]

The read-only attributes of the user pool.



=head2 RefreshTokenValidity => Int

The time limit, in days, after which the refresh token is no longer
valid and cannot be used.



=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

A list of provider names for the identity providers that are supported
on this client.



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

