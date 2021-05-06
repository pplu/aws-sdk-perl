
package Paws::CognitoIdp::AdminLinkProviderForUser;
  use Moose;
  has DestinationUser => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderUserIdentifierType', required => 1);
  has SourceUser => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderUserIdentifierType', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminLinkProviderForUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminLinkProviderForUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminLinkProviderForUser - Arguments for method AdminLinkProviderForUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminLinkProviderForUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminLinkProviderForUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminLinkProviderForUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminLinkProviderForUserResponse =
      $cognito -idp->AdminLinkProviderForUser(
      DestinationUser => {
        ProviderAttributeName  => 'MyStringType',    # OPTIONAL
        ProviderAttributeValue => 'MyStringType',    # OPTIONAL
        ProviderName => 'MyProviderNameType',        # min: 1, max: 32; OPTIONAL
      },
      SourceUser => {
        ProviderAttributeName  => 'MyStringType',    # OPTIONAL
        ProviderAttributeValue => 'MyStringType',    # OPTIONAL
        ProviderName => 'MyProviderNameType',        # min: 1, max: 32; OPTIONAL
      },
      UserPoolId => 'MyStringType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminLinkProviderForUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

The existing user in the user pool to be linked to the external
identity provider user account. Can be a native (Username + Password)
Cognito User Pools user or a federated user (for example, a SAML or
Facebook user). If the user doesn't exist, an exception is thrown. This
is the user that is returned when the new user (with the linked
identity provider attribute) signs in.

For a native username + password user, the C<ProviderAttributeValue>
for the C<DestinationUser> should be the username in the user pool. For
a federated user, it should be the provider-specific C<user_id>.

The C<ProviderAttributeName> of the C<DestinationUser> is ignored.

The C<ProviderName> should be set to C<Cognito> for users in Cognito
user pools.



=head2 B<REQUIRED> SourceUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

An external identity provider account for a user who does not currently
exist yet in the user pool. This user must be a federated user (for
example, a SAML or Facebook user), not another native user.

If the C<SourceUser> is a federated social identity provider user
(Facebook, Google, or Login with Amazon), you must set the
C<ProviderAttributeName> to C<Cognito_Subject>. For social identity
providers, the C<ProviderName> will be C<Facebook>, C<Google>, or
C<LoginWithAmazon>, and Cognito will automatically parse the Facebook,
Google, and Login with Amazon tokens for C<id>, C<sub>, and C<user_id>,
respectively. The C<ProviderAttributeValue> for the user must be the
same value as the C<id>, C<sub>, or C<user_id> value found in the
social identity provider token.

For SAML, the C<ProviderAttributeName> can be any value that matches a
claim in the SAML assertion. If you wish to link SAML users based on
the subject of the SAML assertion, you should map the subject to a
claim through the SAML identity provider and submit that claim name as
the C<ProviderAttributeName>. If you set C<ProviderAttributeName> to
C<Cognito_Subject>, Cognito will automatically parse the default unique
identifier found in the subject from the SAML token.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminLinkProviderForUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

