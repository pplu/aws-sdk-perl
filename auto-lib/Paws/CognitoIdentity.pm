
use Paws::API;


package Paws::CognitoIdentity {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cognito-identity');
  has version => (is => 'ro', isa => 'Str', default => '2014-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSCognitoIdentityService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::CreateIdentityPool', @_);
  }
  sub DeleteIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::DeleteIdentityPool', @_);
  }
  sub DescribeIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::DescribeIdentityPool', @_);
  }
  sub GetId {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetId', @_);
  }
  sub GetOpenIdToken {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetOpenIdToken', @_);
  }
  sub GetOpenIdTokenForDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::ListIdentities', @_);
  }
  sub ListIdentityPools {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::ListIdentityPools', @_);
  }
  sub LookupDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::LookupDeveloperIdentity', @_);
  }
  sub MergeDeveloperIdentities {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::MergeDeveloperIdentities', @_);
  }
  sub UnlinkDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UnlinkDeveloperIdentity', @_);
  }
  sub UnlinkIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UnlinkIdentity', @_);
  }
  sub UpdateIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UpdateIdentityPool', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity - Perl Interface to AWS Amazon Cognito Identity

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Cognito

Amazon Cognito is a web service that delivers scoped temporary
credentials to mobile devices and other untrusted environments. Amazon
Cognito uniquely identifies a device and supplies the user with a
consistent identity over the lifetime of an application.

Using Amazon Cognito, you can enable authentication with one or more
third-party identity providers (Facebook, Google, or Login with
Amazon), and you can also choose to support unauthenticated access from
your app. Cognito delivers a unique identifier for each user and acts
as an OpenID token provider trusted by AWS Security Token Service (STS)
to access temporary, limited-privilege AWS credentials.

To provide end-user credentials, first make an unsigned call to GetId.
If the end user is authenticated with one of the supported identity
providers, set the C<Logins> map with the identity provider token.
C<GetId> returns a unique identifier for the user.

Next, make an unsigned call to GetOpenIdToken, which returns the OpenID
token necessary to call STS and retrieve AWS credentials. This call
expects the same C<Logins> map as the C<GetId> call, as well as the
C<IdentityID> originally returned by C<GetId>. The token returned by
C<GetOpenIdToken> can be passed to the STS operation
AssumeRoleWithWebIdentity to retrieve AWS credentials.










=head1 METHODS

=head2 CreateIdentityPool()

  Arguments described in: L<Paws::CognitoIdentity::CreateIdentityPool>

  Returns: L<Paws::CognitoIdentity::IdentityPool>

  

Creates a new identity pool. The identity pool is a store of user
identity information that is specific to your AWS account. The limit on
identity pools is 60 per account.











=head2 DeleteIdentityPool()

  Arguments described in: L<Paws::CognitoIdentity::DeleteIdentityPool>

  Returns: nothing

  

Deletes a user pool. Once a pool is deleted, users will not be able to
authenticate with the pool.











=head2 DescribeIdentityPool()

  Arguments described in: L<Paws::CognitoIdentity::DescribeIdentityPool>

  Returns: L<Paws::CognitoIdentity::IdentityPool>

  

Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users.











=head2 GetId()

  Arguments described in: L<Paws::CognitoIdentity::GetId>

  Returns: L<Paws::CognitoIdentity::GetIdResponse>

  

Generates (or retrieves) a Cognito ID. Supplying multiple logins will
create an implicit linked account.











=head2 GetOpenIdToken()

  Arguments described in: L<Paws::CognitoIdentity::GetOpenIdToken>

  Returns: L<Paws::CognitoIdentity::GetOpenIdTokenResponse>

  

Gets an OpenID token, using a known Cognito ID. This known Cognito ID
is returned by GetId. You can optionally add additional logins for the
identity. Supplying multiple logins creates an implicit link.

The OpenId token is valid for 15 minutes.











=head2 GetOpenIdTokenForDeveloperIdentity()

  Arguments described in: L<Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity>

  Returns: L<Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse>

  

Registers (or retrieves) a Cognito C<IdentityId> and an OpenID Connect
token for a user authenticated by your backend authentication process.
Supplying multiple logins will create an implicit linked account. You
can only specify one developer provider as part of the C<Logins> map,
which is linked to the identity pool. The developer provider is the
"domain" by which Cognito will refer to your users.

You can use C<GetOpenIdTokenForDeveloperIdentity> to create a new
identity and to link new logins (that is, user credentials issued by a
public provider or developer provider) to an existing identity. When
you want to create a new identity, the C<IdentityId> should be null.
When you want to associate a new login with an existing
authenticated/unauthenticated identity, you can do so by providing the
existing C<IdentityId>. This API will create the identity in the
specified C<IdentityPoolId>.











=head2 ListIdentities()

  Arguments described in: L<Paws::CognitoIdentity::ListIdentities>

  Returns: L<Paws::CognitoIdentity::ListIdentitiesResponse>

  

Lists the identities in a pool.











=head2 ListIdentityPools()

  Arguments described in: L<Paws::CognitoIdentity::ListIdentityPools>

  Returns: L<Paws::CognitoIdentity::ListIdentityPoolsResponse>

  

Lists all of the Cognito identity pools registered for your account.











=head2 LookupDeveloperIdentity()

  Arguments described in: L<Paws::CognitoIdentity::LookupDeveloperIdentity>

  Returns: L<Paws::CognitoIdentity::LookupDeveloperIdentityResponse>

  

Retrieves the C<IdentityID> associated with a
C<DeveloperUserIdentifier> or the list of C<DeveloperUserIdentifier>s
associated with an C<IdentityId> for an existing identity. Either
C<IdentityID> or C<DeveloperUserIdentifier> must not be null. If you
supply only one of these values, the other value will be searched in
the database and returned as a part of the response. If you supply
both, C<DeveloperUserIdentifier> will be matched against C<IdentityID>.
If the values are verified against the database, the response returns
both values and is the same as the request. Otherwise a
C<ResourceConflictException> is thrown.











=head2 MergeDeveloperIdentities()

  Arguments described in: L<Paws::CognitoIdentity::MergeDeveloperIdentities>

  Returns: L<Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse>

  

Merges two users having different C<IdentityId>s, existing in the same
identity pool, and identified by the same developer provider. You can
use this action to request that discrete users be merged and identified
as a single user in the Cognito environment. Cognito associates the
given source user (C<SourceUserIdentifier>) with the C<IdentityId> of
the C<DestinationUserIdentifier>. Only developer-authenticated users
can be merged. If the users to be merged are associated with the same
public provider, but as two different users, an exception will be
thrown.











=head2 UnlinkDeveloperIdentity()

  Arguments described in: L<Paws::CognitoIdentity::UnlinkDeveloperIdentity>

  Returns: nothing

  

Unlinks a C<DeveloperUserIdentifier> from an existing identity.
Unlinked developer users will be considered new identities next time
they are seen. If, for a given Cognito identity, you remove all
federated identities as well as the developer user identifier, the
Cognito identity becomes inaccessible.











=head2 UnlinkIdentity()

  Arguments described in: L<Paws::CognitoIdentity::UnlinkIdentity>

  Returns: nothing

  

Unlinks a federated identity from an existing account. Unlinked logins
will be considered new identities next time they are seen. Removing the
last linked login will make this identity inaccessible.











=head2 UpdateIdentityPool()

  Arguments described in: L<Paws::CognitoIdentity::UpdateIdentityPool>

  Returns: L<Paws::CognitoIdentity::IdentityPool>

  

Updates a user pool.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

