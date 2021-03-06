
package Paws::CognitoIdentity::CreateIdentityPool;
  use Moose;
  has AllowClassicFlow => (is => 'ro', isa => 'Bool');
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has CognitoIdentityProviders => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::CognitoIdentityProvider]');
  has DeveloperProviderName => (is => 'ro', isa => 'Str');
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolTags => (is => 'ro', isa => 'Paws::CognitoIdentity::IdentityPoolTagsType');
  has OpenIdConnectProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SamlProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedLoginProviders => (is => 'ro', isa => 'Paws::CognitoIdentity::IdentityProviders');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::IdentityPool');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::CreateIdentityPool - Arguments for method CreateIdentityPool on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdentityPool on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method CreateIdentityPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdentityPool.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $IdentityPool = $cognito -identity->CreateIdentityPool(
      AllowUnauthenticatedIdentities => 1,
      IdentityPoolName               => 'MyIdentityPoolName',
      AllowClassicFlow               => 1,                      # OPTIONAL
      CognitoIdentityProviders       => [
        {
          ClientId =>
            'MyCognitoIdentityProviderClientId',    # min: 1, max: 128; OPTIONAL
          ProviderName =>
            'MyCognitoIdentityProviderName',        # min: 1, max: 128; OPTIONAL
          ServerSideTokenCheck => 1,                # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DeveloperProviderName => 'MyDeveloperProviderName',    # OPTIONAL
      IdentityPoolTags      => {
        'MyTagKeysType' =>
          'MyTagValueType',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      OpenIdConnectProviderARNs => [
        'MyARNString', ...    # min: 20, max: 2048
      ],    # OPTIONAL
      SamlProviderARNs => [
        'MyARNString', ...    # min: 20, max: 2048
      ],    # OPTIONAL
      SupportedLoginProviders => {
        'MyIdentityProviderName' => 'MyIdentityProviderId'
        ,    # key: min: 1, max: 128, value: min: 1, max: 128
      },    # OPTIONAL
    );

    # Results:
    my $AllowClassicFlow = $IdentityPool->AllowClassicFlow;
    my $AllowUnauthenticatedIdentities =
      $IdentityPool->AllowUnauthenticatedIdentities;
    my $CognitoIdentityProviders  = $IdentityPool->CognitoIdentityProviders;
    my $DeveloperProviderName     = $IdentityPool->DeveloperProviderName;
    my $IdentityPoolId            = $IdentityPool->IdentityPoolId;
    my $IdentityPoolName          = $IdentityPool->IdentityPoolName;
    my $IdentityPoolTags          = $IdentityPool->IdentityPoolTags;
    my $OpenIdConnectProviderARNs = $IdentityPool->OpenIdConnectProviderARNs;
    my $SamlProviderARNs          = $IdentityPool->SamlProviderARNs;
    my $SupportedLoginProviders   = $IdentityPool->SupportedLoginProviders;

    # Returns a L<Paws::CognitoIdentity::IdentityPool> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/CreateIdentityPool>

=head1 ATTRIBUTES


=head2 AllowClassicFlow => Bool

Enables or disables the Basic (Classic) authentication flow. For more
information, see Identity Pools (Federated Identities) Authentication
Flow
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html)
in the I<Amazon Cognito Developer Guide>.



=head2 B<REQUIRED> AllowUnauthenticatedIdentities => Bool

TRUE if the identity pool supports unauthenticated logins.



=head2 CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]

An array of Amazon Cognito user pools and their client IDs.



=head2 DeveloperProviderName => Str

The "domain" by which Cognito will refer to your users. This name acts
as a placeholder that allows your backend and the Cognito service to
communicate about the developer provider. For the
C<DeveloperProviderName>, you can use letters as well as period (C<.>),
underscore (C<_>), and dash (C<->).

Once you have set a developer provider name, you cannot change it.
Please take care in setting this parameter.



=head2 B<REQUIRED> IdentityPoolName => Str

A string that you provide.



=head2 IdentityPoolTags => L<Paws::CognitoIdentity::IdentityPoolTagsType>

Tags to assign to the identity pool. A tag is a label that you can
apply to identity pools to categorize and manage them in different
ways, such as by purpose, owner, environment, or other criteria.



=head2 OpenIdConnectProviderARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the OpenID Connect providers.



=head2 SamlProviderARNs => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the SAML provider for your
identity pool.



=head2 SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>

Optional key:value pairs mapping provider names to provider app IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdentityPool in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

