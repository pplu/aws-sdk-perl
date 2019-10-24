# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::IdentityPool;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_IdentityProviders CognitoIdentity_CognitoIdentityProvider CognitoIdentity_IdentityPoolTagsType/;
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => Bool, required => 1);
  has CognitoIdentityProviders => (is => 'ro', isa => ArrayRef[CognitoIdentity_CognitoIdentityProvider]);
  has DeveloperProviderName => (is => 'ro', isa => Str);
  has IdentityPoolId => (is => 'ro', isa => Str, required => 1);
  has IdentityPoolName => (is => 'ro', isa => Str, required => 1);
  has IdentityPoolTags => (is => 'ro', isa => CognitoIdentity_IdentityPoolTagsType);
  has OpenIdConnectProviderARNs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SamlProviderARNs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SupportedLoginProviders => (is => 'ro', isa => CognitoIdentity_IdentityProviders);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AllowUnauthenticatedIdentities' => {
                                                     'type' => 'Bool'
                                                   },
               'CognitoIdentityProviders' => {
                                               'class' => 'Paws::CognitoIdentity::CognitoIdentityProvider',
                                               'type' => 'ArrayRef[CognitoIdentity_CognitoIdentityProvider]'
                                             },
               'DeveloperProviderName' => {
                                            'type' => 'Str'
                                          },
               'OpenIdConnectProviderARNs' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'IdentityPoolName' => {
                                       'type' => 'Str'
                                     },
               'SamlProviderARNs' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'IdentityPoolTags' => {
                                       'class' => 'Paws::CognitoIdentity::IdentityPoolTagsType',
                                       'type' => 'CognitoIdentity_IdentityPoolTagsType'
                                     },
               'SupportedLoginProviders' => {
                                              'class' => 'Paws::CognitoIdentity::IdentityProviders',
                                              'type' => 'CognitoIdentity_IdentityProviders'
                                            }
             },
  'IsRequired' => {
                    'AllowUnauthenticatedIdentities' => 1,
                    'IdentityPoolName' => 1,
                    'IdentityPoolId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::IdentityPool

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowUnauthenticatedIdentities => Bool

TRUE if the identity pool supports unauthenticated logins.


=head2 CognitoIdentityProviders => ArrayRef[CognitoIdentity_CognitoIdentityProvider]

A list representing an Amazon Cognito user pool and its client ID.


=head2 DeveloperProviderName => Str

The "domain" by which Cognito will refer to your users.


=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.


=head2 B<REQUIRED> IdentityPoolName => Str

A string that you provide.


=head2 IdentityPoolTags => CognitoIdentity_IdentityPoolTagsType

The tags that are assigned to the identity pool. A tag is a label that
you can apply to identity pools to categorize and manage them in
different ways, such as by purpose, owner, environment, or other
criteria.


=head2 OpenIdConnectProviderARNs => ArrayRef[Str|Undef]

A list of OpendID Connect provider ARNs.


=head2 SamlProviderARNs => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the SAML provider for your
identity pool.


=head2 SupportedLoginProviders => CognitoIdentity_IdentityProviders

Optional key:value pairs mapping provider names to provider app IDs.


=head2 _request_id => Str


=cut

1;