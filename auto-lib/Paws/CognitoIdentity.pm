package Paws::CognitoIdentity;
  use Moose;
  sub service { 'cognito-identity' }
  sub signing_name { 'cognito-identity' }
  sub version { '2014-06-30' }
  sub target_prefix { 'AWSCognitoIdentityService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateIdentityPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::CreateIdentityPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::DeleteIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::DeleteIdentityPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::DescribeIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::DescribeIdentityPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCredentialsForIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetCredentialsForIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityPoolRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetIdentityPoolRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOpenIdToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetOpenIdToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOpenIdTokenForDeveloperIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::ListIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::ListIdentityPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LookupDeveloperIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::LookupDeveloperIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeDeveloperIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::MergeDeveloperIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityPoolRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::SetIdentityPoolRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnlinkDeveloperIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::UnlinkDeveloperIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnlinkIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::UnlinkIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::UpdateIdentityPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIdentityPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentityPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIdentityPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->IdentityPools }, @{ $next_result->IdentityPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IdentityPools') foreach (@{ $result->IdentityPools });
        $result = $self->ListIdentityPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IdentityPools') foreach (@{ $result->IdentityPools });
    }

    return undef
  }


  sub operations { qw/CreateIdentityPool DeleteIdentities DeleteIdentityPool DescribeIdentity DescribeIdentityPool GetCredentialsForIdentity GetId GetIdentityPoolRoles GetOpenIdToken GetOpenIdTokenForDeveloperIdentity ListIdentities ListIdentityPools LookupDeveloperIdentity MergeDeveloperIdentities SetIdentityPoolRoles UnlinkDeveloperIdentity UnlinkIdentity UpdateIdentityPool / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity - Perl Interface to AWS Amazon Cognito Identity

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CognitoIdentity');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

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

Next, make an unsigned call to GetCredentialsForIdentity. This call
expects the same C<Logins> map as the C<GetId> call, as well as the
C<IdentityID> originally returned by C<GetId>. Assuming your identity
pool has been configured via the SetIdentityPoolRoles operation,
C<GetCredentialsForIdentity> will return AWS credentials for your use.
If your pool has not been configured with C<SetIdentityPoolRoles>, or
if you want to follow legacy flow, make an unsigned call to
GetOpenIdToken, which returns the OpenID token necessary to call STS
and retrieve AWS credentials. This call expects the same C<Logins> map
as the C<GetId> call, as well as the C<IdentityID> originally returned
by C<GetId>. The token returned by C<GetOpenIdToken> can be passed to
the STS operation AssumeRoleWithWebIdentity
(http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html)
to retrieve AWS credentials.

If you want to use Amazon Cognito in an Android, iOS, or Unity
application, you will probably want to make API calls via the AWS
Mobile SDK. To learn more, see the AWS Mobile SDK Developer Guide
(http://docs.aws.amazon.com/mobile/index.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/cognito/>


=head1 METHODS

=head2 CreateIdentityPool

=over

=item AllowUnauthenticatedIdentities => Bool

=item IdentityPoolName => Str

=item [CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]]

=item [DeveloperProviderName => Str]

=item [OpenIdConnectProviderARNs => ArrayRef[Str|Undef]]

=item [SamlProviderARNs => ArrayRef[Str|Undef]]

=item [SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::CreateIdentityPool>

Returns: a L<Paws::CognitoIdentity::IdentityPool> instance

Creates a new identity pool. The identity pool is a store of user
identity information that is specific to your AWS account. The limit on
identity pools is 60 per account. The keys for
C<SupportedLoginProviders> are as follows:

=over

=item *

Facebook: C<graph.facebook.com>

=item *

Google: C<accounts.google.com>

=item *

Amazon: C<www.amazon.com>

=item *

Twitter: C<api.twitter.com>

=item *

Digits: C<www.digits.com>

=back

You must use AWS Developer credentials to call this API.


=head2 DeleteIdentities

=over

=item IdentityIdsToDelete => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::DeleteIdentities>

Returns: a L<Paws::CognitoIdentity::DeleteIdentitiesResponse> instance

Deletes identities from an identity pool. You can specify a list of
1-60 identities that you want to delete.

You must use AWS Developer credentials to call this API.


=head2 DeleteIdentityPool

=over

=item IdentityPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::DeleteIdentityPool>

Returns: nothing

Deletes a user pool. Once a pool is deleted, users will not be able to
authenticate with the pool.

You must use AWS Developer credentials to call this API.


=head2 DescribeIdentity

=over

=item IdentityId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::DescribeIdentity>

Returns: a L<Paws::CognitoIdentity::IdentityDescription> instance

Returns metadata related to the given identity, including when the
identity was created and any associated linked logins.

You must use AWS Developer credentials to call this API.


=head2 DescribeIdentityPool

=over

=item IdentityPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::DescribeIdentityPool>

Returns: a L<Paws::CognitoIdentity::IdentityPool> instance

Gets details about a particular identity pool, including the pool name,
ID description, creation date, and current number of users.

You must use AWS Developer credentials to call this API.


=head2 GetCredentialsForIdentity

=over

=item IdentityId => Str

=item [CustomRoleArn => Str]

=item [Logins => L<Paws::CognitoIdentity::LoginsMap>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetCredentialsForIdentity>

Returns: a L<Paws::CognitoIdentity::GetCredentialsForIdentityResponse> instance

Returns credentials for the provided identity ID. Any provided logins
will be validated against supported login providers. If the token is
for cognito-identity.amazonaws.com, it will be passed through to AWS
Security Token Service with the appropriate role for the token.

This is a public API. You do not need any credentials to call this API.


=head2 GetId

=over

=item IdentityPoolId => Str

=item [AccountId => Str]

=item [Logins => L<Paws::CognitoIdentity::LoginsMap>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetId>

Returns: a L<Paws::CognitoIdentity::GetIdResponse> instance

Generates (or retrieves) a Cognito ID. Supplying multiple logins will
create an implicit linked account.

This is a public API. You do not need any credentials to call this API.


=head2 GetIdentityPoolRoles

=over

=item IdentityPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetIdentityPoolRoles>

Returns: a L<Paws::CognitoIdentity::GetIdentityPoolRolesResponse> instance

Gets the roles for an identity pool.

You must use AWS Developer credentials to call this API.


=head2 GetOpenIdToken

=over

=item IdentityId => Str

=item [Logins => L<Paws::CognitoIdentity::LoginsMap>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetOpenIdToken>

Returns: a L<Paws::CognitoIdentity::GetOpenIdTokenResponse> instance

Gets an OpenID token, using a known Cognito ID. This known Cognito ID
is returned by GetId. You can optionally add additional logins for the
identity. Supplying multiple logins creates an implicit link.

The OpenId token is valid for 15 minutes.

This is a public API. You do not need any credentials to call this API.


=head2 GetOpenIdTokenForDeveloperIdentity

=over

=item IdentityPoolId => Str

=item Logins => L<Paws::CognitoIdentity::LoginsMap>

=item [IdentityId => Str]

=item [TokenDuration => Int]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity>

Returns: a L<Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse> instance

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

You must use AWS Developer credentials to call this API.


=head2 ListIdentities

=over

=item IdentityPoolId => Str

=item MaxResults => Int

=item [HideDisabled => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::ListIdentities>

Returns: a L<Paws::CognitoIdentity::ListIdentitiesResponse> instance

Lists the identities in a pool.

You must use AWS Developer credentials to call this API.


=head2 ListIdentityPools

=over

=item MaxResults => Int

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::ListIdentityPools>

Returns: a L<Paws::CognitoIdentity::ListIdentityPoolsResponse> instance

Lists all of the Cognito identity pools registered for your account.

You must use AWS Developer credentials to call this API.


=head2 LookupDeveloperIdentity

=over

=item IdentityPoolId => Str

=item [DeveloperUserIdentifier => Str]

=item [IdentityId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::LookupDeveloperIdentity>

Returns: a L<Paws::CognitoIdentity::LookupDeveloperIdentityResponse> instance

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

You must use AWS Developer credentials to call this API.


=head2 MergeDeveloperIdentities

=over

=item DestinationUserIdentifier => Str

=item DeveloperProviderName => Str

=item IdentityPoolId => Str

=item SourceUserIdentifier => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::MergeDeveloperIdentities>

Returns: a L<Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse> instance

Merges two users having different C<IdentityId>s, existing in the same
identity pool, and identified by the same developer provider. You can
use this action to request that discrete users be merged and identified
as a single user in the Cognito environment. Cognito associates the
given source user (C<SourceUserIdentifier>) with the C<IdentityId> of
the C<DestinationUserIdentifier>. Only developer-authenticated users
can be merged. If the users to be merged are associated with the same
public provider, but as two different users, an exception will be
thrown.

You must use AWS Developer credentials to call this API.


=head2 SetIdentityPoolRoles

=over

=item IdentityPoolId => Str

=item Roles => L<Paws::CognitoIdentity::RolesMap>

=item [RoleMappings => L<Paws::CognitoIdentity::RoleMappingMap>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::SetIdentityPoolRoles>

Returns: nothing

Sets the roles for an identity pool. These roles are used when making
calls to GetCredentialsForIdentity action.

You must use AWS Developer credentials to call this API.


=head2 UnlinkDeveloperIdentity

=over

=item DeveloperProviderName => Str

=item DeveloperUserIdentifier => Str

=item IdentityId => Str

=item IdentityPoolId => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::UnlinkDeveloperIdentity>

Returns: nothing

Unlinks a C<DeveloperUserIdentifier> from an existing identity.
Unlinked developer users will be considered new identities next time
they are seen. If, for a given Cognito identity, you remove all
federated identities as well as the developer user identifier, the
Cognito identity becomes inaccessible.

You must use AWS Developer credentials to call this API.


=head2 UnlinkIdentity

=over

=item IdentityId => Str

=item Logins => L<Paws::CognitoIdentity::LoginsMap>

=item LoginsToRemove => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::UnlinkIdentity>

Returns: nothing

Unlinks a federated identity from an existing account. Unlinked logins
will be considered new identities next time they are seen. Removing the
last linked login will make this identity inaccessible.

This is a public API. You do not need any credentials to call this API.


=head2 UpdateIdentityPool

=over

=item AllowUnauthenticatedIdentities => Bool

=item IdentityPoolId => Str

=item IdentityPoolName => Str

=item [CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]]

=item [DeveloperProviderName => Str]

=item [OpenIdConnectProviderARNs => ArrayRef[Str|Undef]]

=item [SamlProviderARNs => ArrayRef[Str|Undef]]

=item [SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::UpdateIdentityPool>

Returns: a L<Paws::CognitoIdentity::IdentityPool> instance

Updates a user pool.

You must use AWS Developer credentials to call this API.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIdentityPools(sub { },MaxResults => Int, [NextToken => Str])

=head2 ListAllIdentityPools(MaxResults => Int, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IdentityPools, passing the object as the first parameter, and the string 'IdentityPools' as the second parameter 

If not, it will return a a L<Paws::CognitoIdentity::ListIdentityPoolsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

