# Generated from json/callargs_class.tt

package Paws::CognitoIdentity::CreateIdentityPool;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_CognitoIdentityProvider CognitoIdentity_IdentityPoolTagsType CognitoIdentity_IdentityProviders/;
  has AllowClassicFlow => (is => 'ro', isa => Bool, predicate => 1);
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has CognitoIdentityProviders => (is => 'ro', isa => ArrayRef[CognitoIdentity_CognitoIdentityProvider], predicate => 1);
  has DeveloperProviderName => (is => 'ro', isa => Str, predicate => 1);
  has IdentityPoolName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityPoolTags => (is => 'ro', isa => CognitoIdentity_IdentityPoolTagsType, predicate => 1);
  has OpenIdConnectProviderARNs => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SamlProviderARNs => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SupportedLoginProviders => (is => 'ro', isa => CognitoIdentity_IdentityProviders, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateIdentityPool');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdentity::IdentityPool');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IdentityPoolName' => 1,
                    'AllowUnauthenticatedIdentities' => 1
                  },
  'types' => {
               'CognitoIdentityProviders' => {
                                               'class' => 'Paws::CognitoIdentity::CognitoIdentityProvider',
                                               'type' => 'ArrayRef[CognitoIdentity_CognitoIdentityProvider]'
                                             },
               'IdentityPoolTags' => {
                                       'class' => 'Paws::CognitoIdentity::IdentityPoolTagsType',
                                       'type' => 'CognitoIdentity_IdentityPoolTagsType'
                                     },
               'IdentityPoolName' => {
                                       'type' => 'Str'
                                     },
               'DeveloperProviderName' => {
                                            'type' => 'Str'
                                          },
               'SupportedLoginProviders' => {
                                              'type' => 'CognitoIdentity_IdentityProviders',
                                              'class' => 'Paws::CognitoIdentity::IdentityProviders'
                                            },
               'OpenIdConnectProviderARNs' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               'AllowClassicFlow' => {
                                       'type' => 'Bool'
                                     },
               'AllowUnauthenticatedIdentities' => {
                                                     'type' => 'Bool'
                                                   },
               'SamlProviderARNs' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             }
}
;
    return $Params_map;
  }

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
      ],                                            # OPTIONAL
      DeveloperProviderName => 'MyDeveloperProviderName',    # OPTIONAL
      IdentityPoolTags      => {
        'MyTagKeysType' =>
          'MyTagValueType',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
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



=head2 CognitoIdentityProviders => ArrayRef[CognitoIdentity_CognitoIdentityProvider]

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



=head2 IdentityPoolTags => CognitoIdentity_IdentityPoolTagsType

Tags to assign to the identity pool. A tag is a label that you can
apply to identity pools to categorize and manage them in different
ways, such as by purpose, owner, environment, or other criteria.



=head2 OpenIdConnectProviderARNs => ArrayRef[Str|Undef]

A list of OpendID Connect provider ARNs.



=head2 SamlProviderARNs => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the SAML provider for your
identity pool.



=head2 SupportedLoginProviders => CognitoIdentity_IdentityProviders

Optional key:value pairs mapping provider names to provider app IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdentityPool in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

