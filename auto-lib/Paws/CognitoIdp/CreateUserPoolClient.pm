# Generated from json/callargs_class.tt

package Paws::CognitoIdp::CreateUserPoolClient;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool Int/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_AnalyticsConfigurationType/;
  has AllowedOAuthFlows => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => Bool, predicate => 1);
  has AllowedOAuthScopes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has AnalyticsConfiguration => (is => 'ro', isa => CognitoIdp_AnalyticsConfigurationType, predicate => 1);
  has CallbackURLs => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ClientName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DefaultRedirectURI => (is => 'ro', isa => Str, predicate => 1);
  has ExplicitAuthFlows => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has GenerateSecret => (is => 'ro', isa => Bool, predicate => 1);
  has LogoutURLs => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has PreventUserExistenceErrors => (is => 'ro', isa => Str, predicate => 1);
  has ReadAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has RefreshTokenValidity => (is => 'ro', isa => Int, predicate => 1);
  has SupportedIdentityProviders => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WriteAttributes => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateUserPoolClient');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolClientResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AllowedOAuthFlowsUserPoolClient' => {
                                                      'type' => 'Bool'
                                                    },
               'PreventUserExistenceErrors' => {
                                                 'type' => 'Str'
                                               },
               'GenerateSecret' => {
                                     'type' => 'Bool'
                                   },
               'AllowedOAuthScopes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'ReadAttributes' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'DefaultRedirectURI' => {
                                         'type' => 'Str'
                                       },
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'AllowedOAuthFlows' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'RefreshTokenValidity' => {
                                           'type' => 'Int'
                                         },
               'LogoutURLs' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'WriteAttributes' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'ExplicitAuthFlows' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'AnalyticsConfiguration' => {
                                             'type' => 'CognitoIdp_AnalyticsConfigurationType',
                                             'class' => 'Paws::CognitoIdp::AnalyticsConfigurationType'
                                           },
               'SupportedIdentityProviders' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
                                               },
               'ClientName' => {
                                 'type' => 'Str'
                               },
               'CallbackURLs' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             },
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'ClientName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolClient - Arguments for method CreateUserPoolClient on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolClient on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolClient.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateUserPoolClientResponse = $cognito -idp->CreateUserPoolClient(
      ClientName        => 'MyClientNameType',
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
      DefaultRedirectURI => 'MyRedirectUrlType',    # OPTIONAL
      ExplicitAuthFlows  => [
        'ADMIN_NO_SRP_AUTH',
        ... # values: ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH
      ],    # OPTIONAL
      GenerateSecret => 1,    # OPTIONAL
      LogoutURLs     => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],                            # OPTIONAL
      PreventUserExistenceErrors => 'LEGACY',    # OPTIONAL
      ReadAttributes             => [
        'MyClientPermissionType', ...            # min: 1, max: 2048
      ],                                         # OPTIONAL
      RefreshTokenValidity       => 1,           # OPTIONAL
      SupportedIdentityProviders => [
        'MyProviderNameType', ...                # min: 1, max: 32
      ],                                         # OPTIONAL
      WriteAttributes => [
        'MyClientPermissionType', ...            # min: 1, max: 2048
      ],                                         # OPTIONAL
    );

    # Results:
    my $UserPoolClient = $CreateUserPoolClientResponse->UserPoolClient;

    # Returns a L<Paws::CognitoIdp::CreateUserPoolClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/CreateUserPoolClient>

=head1 ATTRIBUTES


=head2 AllowedOAuthFlows => ArrayRef[Str|Undef]

Set to C<code> to initiate a code grant flow, which provides an
authorization code as the response. This code can be exchanged for
access tokens with the token endpoint.

Set to C<token> to specify that the client should get the access token
(and, optionally, ID token, based on scopes) directly.



=head2 AllowedOAuthFlowsUserPoolClient => Bool

Set to C<True> if the client is allowed to follow the OAuth protocol
when interacting with Cognito user pools.



=head2 AllowedOAuthScopes => ArrayRef[Str|Undef]

A list of allowed C<OAuth> scopes. Currently supported values are
C<"phone">, C<"email">, C<"openid">, and C<"Cognito">. In addition to
these values, custom scopes created in Resource Servers are also
supported.



=head2 AnalyticsConfiguration => CognitoIdp_AnalyticsConfigurationType

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



=head2 B<REQUIRED> ClientName => Str

The client name for the user pool client you would like to create.



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




=head2 GenerateSecret => Bool

Boolean to specify whether you want to generate a secret for the user
pool client being created.



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

After January 1st 2020, the value of C<PreventUserExistenceErrors> will
default to C<ENABLED> for newly created user pool clients if no value
is provided.

Valid values are: C<"LEGACY">, C<"ENABLED">

=head2 ReadAttributes => ArrayRef[Str|Undef]

The read attributes.



=head2 RefreshTokenValidity => Int

The time limit, in days, after which the refresh token is no longer
valid and cannot be used.



=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

A list of provider names for the identity providers that are supported
on this client. The following are supported: C<COGNITO>, C<Facebook>,
C<Google> and C<LoginWithAmazon>.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to create a user pool
client.



=head2 WriteAttributes => ArrayRef[Str|Undef]

The user pool attributes that the app client can write to.

If your app client allows users to sign in through an identity
provider, this array must include all attributes that are mapped to
identity provider attributes. Amazon Cognito updates mapped attributes
when users sign in to your application through an identity provider. If
your app client lacks write access to a mapped attribute, Amazon
Cognito throws an error when it attempts to update the attribute. For
more information, see Specifying Identity Provider Attribute Mappings
for Your User Pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

