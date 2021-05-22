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
  sub GetPrincipalTagAttributeMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::GetPrincipalTagAttributeMap', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::ListTagsForResource', @_);
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
  sub SetPrincipalTagAttributeMap {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::SetPrincipalTagAttributeMap', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::TagResource', @_);
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
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CognitoIdentity::UntagResource', @_);
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


  sub operations { qw/CreateIdentityPool DeleteIdentities DeleteIdentityPool DescribeIdentity DescribeIdentityPool GetCredentialsForIdentity GetId GetIdentityPoolRoles GetOpenIdToken GetOpenIdTokenForDeveloperIdentity GetPrincipalTagAttributeMap ListIdentities ListIdentityPools ListTagsForResource LookupDeveloperIdentity MergeDeveloperIdentities SetIdentityPoolRoles SetPrincipalTagAttributeMap TagResource UnlinkDeveloperIdentity UnlinkIdentity UntagResource UpdateIdentityPool / }

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

Amazon Cognito Federated Identities

Amazon Cognito Federated Identities is a web service that delivers
scoped temporary credentials to mobile devices and other untrusted
environments. It uniquely identifies a device and supplies the user
with a consistent identity over the lifetime of an application.

Using Amazon Cognito Federated Identities, you can enable
authentication with one or more third-party identity providers
(Facebook, Google, or Login with Amazon) or an Amazon Cognito user
pool, and you can also choose to support unauthenticated access from
your app. Cognito delivers a unique identifier for each user and acts
as an OpenID token provider trusted by AWS Security Token Service (STS)
to access temporary, limited-privilege AWS credentials.

For a description of the authentication flow from the Amazon Cognito
Developer Guide see Authentication Flow
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).

For more information see Amazon Cognito Federated Identities
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/cognito/>


=head1 METHODS

=head2 CreateIdentityPool

=over

=item AllowUnauthenticatedIdentities => Bool

=item IdentityPoolName => Str

=item [AllowClassicFlow => Bool]

=item [CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]]

=item [DeveloperProviderName => Str]

=item [IdentityPoolTags => L<Paws::CognitoIdentity::IdentityPoolTagsType>]

=item [OpenIdConnectProviderARNs => ArrayRef[Str|Undef]]

=item [SamlProviderARNs => ArrayRef[Str|Undef]]

=item [SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::CreateIdentityPool>

Returns: a L<Paws::CognitoIdentity::IdentityPool> instance

Creates a new identity pool. The identity pool is a store of user
identity information that is specific to your AWS account. The keys for
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

Deletes an identity pool. Once a pool is deleted, users will not be
able to authenticate with the pool.

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

The OpenID token is valid for 10 minutes.

This is a public API. You do not need any credentials to call this API.


=head2 GetOpenIdTokenForDeveloperIdentity

=over

=item IdentityPoolId => Str

=item Logins => L<Paws::CognitoIdentity::LoginsMap>

=item [IdentityId => Str]

=item [PrincipalTags => L<Paws::CognitoIdentity::PrincipalTags>]

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


=head2 GetPrincipalTagAttributeMap

=over

=item IdentityPoolId => Str

=item IdentityProviderName => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::GetPrincipalTagAttributeMap>

Returns: a L<Paws::CognitoIdentity::GetPrincipalTagAttributeMapResponse> instance

Use C<GetPrincipalTagAttributeMap> to list all mappings between
C<PrincipalTags> and user attributes.


=head2 ListIdentities

=over

=item IdentityPoolId => Str

=item MaxResults => Int

=item [HideDisabled => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::ListIdentities>

Returns: a L<Paws::CognitoIdentity::ListIdentitiesResponse> instance

Lists the identities in an identity pool.

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


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::ListTagsForResource>

Returns: a L<Paws::CognitoIdentity::ListTagsForResourceResponse> instance

Lists the tags that are assigned to an Amazon Cognito identity pool.

A tag is a label that you can apply to identity pools to categorize and
manage them in different ways, such as by purpose, owner, environment,
or other criteria.

You can use this action up to 10 times per second, per account.


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
C<DeveloperUserIdentifier> or the list of C<DeveloperUserIdentifier>
values associated with an C<IdentityId> for an existing identity.
Either C<IdentityID> or C<DeveloperUserIdentifier> must not be null. If
you supply only one of these values, the other value will be searched
in the database and returned as a part of the response. If you supply
both, C<DeveloperUserIdentifier> will be matched against C<IdentityID>.
If the values are verified against the database, the response returns
both values and is the same as the request. Otherwise a
C<ResourceConflictException> is thrown.

C<LookupDeveloperIdentity> is intended for low-throughput control plane
operations: for example, to enable customer service to locate an
identity ID by username. If you are using it for higher-volume
operations such as user authentication, your requests are likely to be
throttled. GetOpenIdTokenForDeveloperIdentity is a better option for
higher-volume operations for user authentication.

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

The number of linked logins is limited to 20. So, the number of linked
logins for the source user, C<SourceUserIdentifier>, and the
destination user, C<DestinationUserIdentifier>, together should not be
larger than 20. Otherwise, an exception will be thrown.

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


=head2 SetPrincipalTagAttributeMap

=over

=item IdentityPoolId => Str

=item IdentityProviderName => Str

=item [PrincipalTags => L<Paws::CognitoIdentity::PrincipalTags>]

=item [UseDefaults => Bool]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::SetPrincipalTagAttributeMap>

Returns: a L<Paws::CognitoIdentity::SetPrincipalTagAttributeMapResponse> instance

You can use this operation to use default (username and clientID)
attribute or custom attribute mappings.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CognitoIdentity::IdentityPoolTagsType>


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::TagResource>

Returns: a L<Paws::CognitoIdentity::TagResourceResponse> instance

Assigns a set of tags to the specified Amazon Cognito identity pool. A
tag is a label that you can use to categorize and manage identity pools
in different ways, such as by purpose, owner, environment, or other
criteria.

Each tag consists of a key and value, both of which you define. A key
is a general category for more specific values. For example, if you
have two versions of an identity pool, one for testing and another for
production, you might assign an C<Environment> tag key to both identity
pools. The value of this key might be C<Test> for one identity pool and
C<Production> for the other.

Tags are useful for cost tracking and access control. You can activate
your tags so that they appear on the Billing and Cost Management
console, where you can track the costs associated with your identity
pools. In an IAM policy, you can constrain permissions for identity
pools based on specific tags or tag values.

You can use this action up to 5 times per second, per account. An
identity pool can have as many as 50 tags.


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


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::UntagResource>

Returns: a L<Paws::CognitoIdentity::UntagResourceResponse> instance

Removes the specified tags from the specified Amazon Cognito identity
pool. You can use this action up to 5 times per second, per account


=head2 UpdateIdentityPool

=over

=item AllowUnauthenticatedIdentities => Bool

=item IdentityPoolId => Str

=item IdentityPoolName => Str

=item [AllowClassicFlow => Bool]

=item [CognitoIdentityProviders => ArrayRef[L<Paws::CognitoIdentity::CognitoIdentityProvider>]]

=item [DeveloperProviderName => Str]

=item [IdentityPoolTags => L<Paws::CognitoIdentity::IdentityPoolTagsType>]

=item [OpenIdConnectProviderARNs => ArrayRef[Str|Undef]]

=item [SamlProviderARNs => ArrayRef[Str|Undef]]

=item [SupportedLoginProviders => L<Paws::CognitoIdentity::IdentityProviders>]


=back

Each argument is described in detail in: L<Paws::CognitoIdentity::UpdateIdentityPool>

Returns: a L<Paws::CognitoIdentity::IdentityPool> instance

Updates an identity pool.

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

