
package Paws::STS::AssumeRoleWithWebIdentityResponse;
  use Moose;
  has AssumedRoleUser => (is => 'ro', isa => 'Paws::STS::AssumedRoleUser');
  has Audience => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has Provider => (is => 'ro', isa => 'Str');
  has SourceIdentity => (is => 'ro', isa => 'Str');
  has SubjectFromWebIdentityToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRoleWithWebIdentityResponse

=head1 ATTRIBUTES


=head2 AssumedRoleUser => L<Paws::STS::AssumedRoleUser>

The Amazon Resource Name (ARN) and the assumed role ID, which are
identifiers that you can use to refer to the resulting temporary
security credentials. For example, you can reference these credentials
as a principal in a resource-based policy by using the ARN or assumed
role ID. The ARN and ID include the C<RoleSessionName> that you
specified when you called C<AssumeRole>.


=head2 Audience => Str

The intended audience (also known as client ID) of the web identity
token. This is traditionally the client identifier issued to the
application that requested the web identity token.


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 PackedPolicySize => Int

A percentage value that indicates the packed size of the session
policies and session tags combined passed in the request. The request
fails if the packed size is greater than 100 percent, which means the
policies and tags exceeded the allowed space.


=head2 Provider => Str

The issuing authority of the web identity token presented. For OpenID
Connect ID tokens, this contains the value of the C<iss> field. For
OAuth 2.0 access tokens, this contains the value of the C<ProviderId>
parameter that was passed in the C<AssumeRoleWithWebIdentity> request.


=head2 SourceIdentity => Str

The value of the source identity that is returned in the JSON web token
(JWT) from the identity provider.

You can require users to set a source identity value when they assume a
role. You do this by using the C<sts:SourceIdentity> condition key in a
role trust policy. That way, actions that are taken with the role are
associated with that user. After the source identity is set, the value
cannot be changed. It is present in the request for all actions that
are taken by the role and persists across chained role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts#iam-term-role-chaining)
sessions. You can configure your identity provider to use an attribute
associated with your users, like user name or email, as the source
identity when calling C<AssumeRoleWithWebIdentity>. You do this by
adding a claim to the JSON web token. To learn more about OIDC tokens
and claims, see Using Tokens with User Pools
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-tokens-with-identity-providers.html)
in the I<Amazon Cognito Developer Guide>. For more information about
using source identity, see Monitor and control actions taken with
assumed roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-


=head2 SubjectFromWebIdentityToken => Str

The unique user identifier that is returned by the identity provider.
This identifier is associated with the C<WebIdentityToken> that was
submitted with the C<AssumeRoleWithWebIdentity> call. The identifier is
typically unique to the user and the application that acquired the
C<WebIdentityToken> (pairwise identifier). For OpenID Connect ID
tokens, this field contains the value returned by the identity provider
as the token's C<sub> (Subject) claim.


=head2 _request_id => Str


=cut

