
package Paws::CognitoIdp::CreateUserPoolClient;
  use Moose;
  has AllowedOAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => 'Bool');
  has AllowedOAuthScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CallbackURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultRedirectURI => (is => 'ro', isa => 'Str');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GenerateSecret => (is => 'ro', isa => 'Bool');
  has LogoutURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has SupportedIdentityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPoolClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolClient - Arguments for method CreateUserPoolClient on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolClient on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method CreateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolClient.

As an example:

  $service_obj->CreateUserPoolClient(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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
C<"phone">, C<"email">, C<"openid">, and C<"Cognito">.



=head2 CallbackURLs => ArrayRef[Str|Undef]

A list of allowed callback URLs for the identity providers.



=head2 B<REQUIRED> ClientName => Str

The client name for the user pool client you would like to create.



=head2 DefaultRedirectURI => Str

The default redirect URI. Must be in the C<CallbackURLs> list.



=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

The explicit authentication flows.



=head2 GenerateSecret => Bool

Boolean to specify whether you want to generate a secret for the user
pool client being created.



=head2 LogoutURLs => ArrayRef[Str|Undef]

A list of allowed logout URLs for the identity providers.



=head2 ReadAttributes => ArrayRef[Str|Undef]

The read attributes.



=head2 RefreshTokenValidity => Int

The time limit, in days, after which the refresh token is no longer
valid and cannot be used.



=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

A list of provider names for the identity providers that are supported
on this client.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to create a user pool
client.



=head2 WriteAttributes => ArrayRef[Str|Undef]

The write attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

