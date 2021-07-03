
package Paws::CognitoIdp::CreateIdentityProvider;
  use Moose;
  has AttributeMapping => (is => 'ro', isa => 'Paws::CognitoIdp::AttributeMappingType');
  has IdpIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProviderDetails => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderDetailsType', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str', required => 1);
  has ProviderType => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateIdentityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateIdentityProvider - Arguments for method CreateIdentityProvider on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdentityProvider on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdentityProvider.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateIdentityProviderResponse = $cognito -idp->CreateIdentityProvider(
      ProviderDetails  => { 'MyStringType' => 'MyStringType', },
      ProviderName     => 'MyProviderNameTypeV1',
      ProviderType     => 'SAML',
      UserPoolId       => 'MyUserPoolIdType',
      AttributeMapping => {
        'MyAttributeMappingKeyType' => 'MyStringType',    # key: min: 1, max: 32
      },    # OPTIONAL
      IdpIdentifiers => [
        'MyIdpIdentifierType', ...    # min: 1, max: 40
      ],    # OPTIONAL
    );

    # Results:
    my $IdentityProvider = $CreateIdentityProviderResponse->IdentityProvider;

    # Returns a L<Paws::CognitoIdp::CreateIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/CreateIdentityProvider>

=head1 ATTRIBUTES


=head2 AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>

A mapping of identity provider attributes to standard and custom user
pool attributes.



=head2 IdpIdentifiers => ArrayRef[Str|Undef]

A list of identity provider identifiers.



=head2 B<REQUIRED> ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>

The identity provider details. The following list describes the
provider detail keys for each identity provider type.

=over

=item *

For Google, Facebook and Login with Amazon:

=over

=item *

client_id

=item *

client_secret

=item *

authorize_scopes

=back

=item *

For Sign in with Apple:

=over

=item *

client_id

=item *

team_id

=item *

key_id

=item *

private_key

=item *

authorize_scopes

=back

=item *

For OIDC providers:

=over

=item *

client_id

=item *

client_secret

=item *

attributes_request_method

=item *

oidc_issuer

=item *

authorize_scopes

=item *

authorize_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

token_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

attributes_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

jwks_uri I<if not available from discovery URL specified by oidc_issuer
key>

=item *

authorize_scopes

=back

=item *

For SAML providers:

=over

=item *

MetadataFile OR MetadataURL

=item *

IDPSignOut I<optional>

=back

=back




=head2 B<REQUIRED> ProviderName => Str

The identity provider name.



=head2 B<REQUIRED> ProviderType => Str

The identity provider type.

Valid values are: C<"SAML">, C<"Facebook">, C<"Google">, C<"LoginWithAmazon">, C<"SignInWithApple">, C<"OIDC">

=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdentityProvider in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

