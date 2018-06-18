
package Paws::CognitoIdentity::UpdateIdentityPool;
  use Moose;
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has CognitoIdentityProviders => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::CognitoIdentityProvider]');
  has DeveloperProviderName => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has OpenIdConnectProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SamlProviderARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedLoginProviders => (is => 'ro', isa => 'Paws::CognitoIdentity::IdentityProviders');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::IdentityPool');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::UpdateIdentityPool - Arguments for method UpdateIdentityPool on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdentityPool on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method UpdateIdentityPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdentityPool.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $IdentityPool = $cognito -identity->UpdateIdentityPool(
      AllowUnauthenticatedIdentities => 1,
      IdentityPoolId                 => 'MyIdentityPoolId',
      IdentityPoolName               => 'MyIdentityPoolName',
      CognitoIdentityProviders       => [
        {
          ClientId =>
            'MyCognitoIdentityProviderClientId',    # min: 1, max: 128; OPTIONAL
          ProviderName =>
            'MyCognitoIdentityProviderName',        # min: 1, max: 128; OPTIONAL
          ServerSideTokenCheck => 1,                # OPTIONAL
        },
        ...
      ],                                            # OPTIONAL
      DeveloperProviderName     => 'MyDeveloperProviderName',    # OPTIONAL
      OpenIdConnectProviderARNs => [
        'MyARNString', ...    # min: 20, max: 2048
      ],                      # OPTIONAL
      SamlProviderARNs => [
        'MyARNString', ...    # min: 20, max: 2048
      ],                      # OPTIONAL
      SupportedLoginProviders => {
        'MyIdentityProviderName' => 'MyIdentityProviderId'
        ,                     # key: min: 1, max: 128, value: min: 1, max: 128
      },    # OPTIONAL
    );

    # Results:
    my $AllowUnauthenticatedIdentities =
      $IdentityPool->AllowUnauthenticatedIdentities;
    my $CognitoIdentityProviders  = $IdentityPool->CognitoIdentityProviders;
    my $DeveloperProviderName     = $IdentityPool->DeveloperProviderName;
    my $IdentityPoolId            = $IdentityPool->IdentityPoolId;
    my $IdentityPoolName          = $IdentityPool->IdentityPoolName;
    my $OpenIdConnectProviderARNs = $IdentityPool->OpenIdConnectProviderARNs;
    my $SamlProviderARNs          = $IdentityPool->SamlProviderARNs;
    my $SupportedLoginProviders   = $IdentityPool->SupportedLoginProviders;

    # Returns a L<Paws::CognitoIdentity::IdentityPool> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/UpdateIdentityPool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowUnauthenticatedIdentities => Bool

TRUE if the identity pool supports unauthenticated logins.



=head2 CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]

A list representing an Amazon Cognito Identity User Pool and its client
ID.



=head2 DeveloperProviderName => Str

The "domain" by which Cognito will refer to your users.



=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.



=head2 B<REQUIRED> IdentityPoolName => Str

A string that you provide.



=head2 OpenIdConnectProviderARNs => ArrayRef[Str|Undef]

A list of OpendID Connect provider ARNs.



=head2 SamlProviderARNs => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the SAML provider for your
identity pool.



=head2 SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>

Optional key:value pairs mapping provider names to provider app IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdentityPool in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

