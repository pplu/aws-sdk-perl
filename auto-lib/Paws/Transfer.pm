package Paws::Transfer;
  use Moose;
  sub service { 'transfer' }
  sub signing_name { 'transfer' }
  sub version { '2018-11-05' }
  sub target_prefix { 'TransferService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSshPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteSshPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSshPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ImportSshPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccesses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListAccesses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListSecurityPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StartServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::StopServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::TestIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transfer::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Servers }, @{ $next_result->Servers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Servers') foreach (@{ $result->Servers });
        $result = $self->ListServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Servers') foreach (@{ $result->Servers });
    }

    return undef
  }


  sub operations { qw/CreateAccess CreateServer CreateUser DeleteAccess DeleteServer DeleteSshPublicKey DeleteUser DescribeAccess DescribeSecurityPolicy DescribeServer DescribeUser ImportSshPublicKey ListAccesses ListSecurityPolicies ListServers ListTagsForResource ListUsers StartServer StopServer TagResource TestIdentityProvider UntagResource UpdateAccess UpdateServer UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer - Perl Interface to AWS AWS Transfer Family

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Transfer');
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

Amazon Web Services Transfer Family is a fully managed service that
enables the transfer of files over the File Transfer Protocol (FTP),
File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File
Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage
Service (Amazon S3). Amazon Web Services helps you seamlessly migrate
your file transfer workflows to Amazon Web Services Transfer Family by
integrating with existing authentication systems, and providing DNS
routing with Amazon Route 53 so nothing changes for your customers and
partners, or their applications. With your data in Amazon S3, you can
use it with Amazon Web Services services for processing, analytics,
machine learning, and archiving. Getting started with Amazon Web
Services Transfer Family is easy since there is no infrastructure to
buy and set up.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05>


=head1 METHODS

=head2 CreateAccess

=over

=item ExternalId => Str

=item Role => Str

=item ServerId => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateAccess>

Returns: a L<Paws::Transfer::CreateAccessResponse> instance

Used by administrators to choose which groups in the directory should
have access to upload and download files over the enabled protocols
using Amazon Web Services Transfer Family. For example, a Microsoft
Active Directory might contain 50,000 users, but only a small fraction
might need the ability to transfer files to the server. An
administrator can use C<CreateAccess> to limit the access to the
correct set of users who need this ability.


=head2 CreateServer

=over

=item [Certificate => Str]

=item [Domain => Str]

=item [EndpointDetails => L<Paws::Transfer::EndpointDetails>]

=item [EndpointType => Str]

=item [HostKey => Str]

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [IdentityProviderType => Str]

=item [LoggingRole => Str]

=item [Protocols => ArrayRef[Str|Undef]]

=item [SecurityPolicyName => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateServer>

Returns: a L<Paws::Transfer::CreateServerResponse> instance

Instantiates an auto-scaling virtual server based on the selected file
transfer protocol in Amazon Web Services. When you make updates to your
file transfer protocol-enabled server or when you work with users, use
the service-generated C<ServerId> property that is assigned to the
newly created server.


=head2 CreateUser

=over

=item Role => Str

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [SshPublicKeyBody => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateUser>

Returns: a L<Paws::Transfer::CreateUserResponse> instance

Creates a user and associates them with an existing file transfer
protocol-enabled server. You can only create and associate users with
servers that have the C<IdentityProviderType> set to
C<SERVICE_MANAGED>. Using parameters for C<CreateUser>, you can specify
the user name, set the home directory, store the user's public key, and
assign the user's Amazon Web Services Identity and Access Management
(IAM) role. You can also optionally add a scope-down policy, and assign
metadata with tags that can be used to group and search for users.


=head2 DeleteAccess

=over

=item ExternalId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteAccess>

Returns: nothing

Allows you to delete the access specified in the C<ServerID> and
C<ExternalID> parameters.


=head2 DeleteServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteServer>

Returns: nothing

Deletes the file transfer protocol-enabled server that you specify.

No response returns from this operation.


=head2 DeleteSshPublicKey

=over

=item ServerId => Str

=item SshPublicKeyId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteSshPublicKey>

Returns: nothing

Deletes a user's Secure Shell (SSH) public key.

No response is returned from this operation.


=head2 DeleteUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteUser>

Returns: nothing

Deletes the user belonging to a file transfer protocol-enabled server
you specify.

No response returns from this operation.

When you delete a user from a server, the user's information is lost.


=head2 DescribeAccess

=over

=item ExternalId => Str

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeAccess>

Returns: a L<Paws::Transfer::DescribeAccessResponse> instance

Describes the access that is assigned to the specific file transfer
protocol-enabled server, as identified by its C<ServerId> property and
its C<ExternalID>.

The response from this call returns the properties of the access that
is associated with the C<ServerId> value that was specified.


=head2 DescribeSecurityPolicy

=over

=item SecurityPolicyName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeSecurityPolicy>

Returns: a L<Paws::Transfer::DescribeSecurityPolicyResponse> instance

Describes the security policy that is attached to your file transfer
protocol-enabled server. The response contains a description of the
security policy's properties. For more information about security
policies, see Working with security policies
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html).


=head2 DescribeServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeServer>

Returns: a L<Paws::Transfer::DescribeServerResponse> instance

Describes a file transfer protocol-enabled server that you specify by
passing the C<ServerId> parameter.

The response contains a description of a server's properties. When you
set C<EndpointType> to VPC, the response will contain the
C<EndpointDetails>.


=head2 DescribeUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeUser>

Returns: a L<Paws::Transfer::DescribeUserResponse> instance

Describes the user assigned to the specific file transfer
protocol-enabled server, as identified by its C<ServerId> property.

The response from this call returns the properties of the user
associated with the C<ServerId> value that was specified.


=head2 ImportSshPublicKey

=over

=item ServerId => Str

=item SshPublicKeyBody => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::ImportSshPublicKey>

Returns: a L<Paws::Transfer::ImportSshPublicKeyResponse> instance

Adds a Secure Shell (SSH) public key to a user account identified by a
C<UserName> value assigned to the specific file transfer
protocol-enabled server, identified by C<ServerId>.

The response returns the C<UserName> value, the C<ServerId> value, and
the name of the C<SshPublicKeyId>.


=head2 ListAccesses

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListAccesses>

Returns: a L<Paws::Transfer::ListAccessesResponse> instance

Lists the details for all the accesses you have on your server.


=head2 ListSecurityPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListSecurityPolicies>

Returns: a L<Paws::Transfer::ListSecurityPoliciesResponse> instance

Lists the security policies that are attached to your file transfer
protocol-enabled servers.


=head2 ListServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListServers>

Returns: a L<Paws::Transfer::ListServersResponse> instance

Lists the file transfer protocol-enabled servers that are associated
with your Amazon Web Services account.


=head2 ListTagsForResource

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListTagsForResource>

Returns: a L<Paws::Transfer::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Name (ARN)
that you specify. The resource can be a user, server, or role.


=head2 ListUsers

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListUsers>

Returns: a L<Paws::Transfer::ListUsersResponse> instance

Lists the users for a file transfer protocol-enabled server that you
specify by passing the C<ServerId> parameter.


=head2 StartServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StartServer>

Returns: nothing

Changes the state of a file transfer protocol-enabled server from
C<OFFLINE> to C<ONLINE>. It has no impact on a server that is already
C<ONLINE>. An C<ONLINE> server can accept and process file transfer
jobs.

The state of C<STARTING> indicates that the server is in an
intermediate state, either not fully able to respond, or not fully
online. The values of C<START_FAILED> can indicate an error condition.

No response is returned from this call.


=head2 StopServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StopServer>

Returns: nothing

Changes the state of a file transfer protocol-enabled server from
C<ONLINE> to C<OFFLINE>. An C<OFFLINE> server cannot accept and process
file transfer jobs. Information tied to your server, such as server and
user properties, are not affected by stopping your server.

Stopping the server will not reduce or impact your file transfer
protocol endpoint billing; you must delete the server to stop being
billed.

The state of C<STOPPING> indicates that the server is in an
intermediate state, either not fully able to respond, or not fully
offline. The values of C<STOP_FAILED> can indicate an error condition.

No response is returned from this call.


=head2 TagResource

=over

=item Arn => Str

=item Tags => ArrayRef[L<Paws::Transfer::Tag>]


=back

Each argument is described in detail in: L<Paws::Transfer::TagResource>

Returns: nothing

Attaches a key-value pair to a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.

There is no response returned from this call.


=head2 TestIdentityProvider

=over

=item ServerId => Str

=item UserName => Str

=item [ServerProtocol => Str]

=item [SourceIp => Str]

=item [UserPassword => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::TestIdentityProvider>

Returns: a L<Paws::Transfer::TestIdentityProviderResponse> instance

If the C<IdentityProviderType> of a file transfer protocol-enabled
server is C<AWS_DIRECTORY_SERVICE> or C<API_Gateway>, tests whether
your identity provider is set up successfully. We highly recommend that
you call this operation to test your authentication method as soon as
you create your server. By doing so, you can troubleshoot issues with
the identity provider integration to ensure that your users can
successfully use the service.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Transfer::UntagResource>

Returns: nothing

Detaches a key-value pair from a resource, as identified by its Amazon
Resource Name (ARN). Resources are users, servers, roles, and other
entities.

No response is returned from this call.


=head2 UpdateAccess

=over

=item ExternalId => Str

=item ServerId => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateAccess>

Returns: a L<Paws::Transfer::UpdateAccessResponse> instance

Allows you to update parameters for the access specified in the
C<ServerID> and C<ExternalID> parameters.


=head2 UpdateServer

=over

=item ServerId => Str

=item [Certificate => Str]

=item [EndpointDetails => L<Paws::Transfer::EndpointDetails>]

=item [EndpointType => Str]

=item [HostKey => Str]

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [LoggingRole => Str]

=item [ProtocolDetails => L<Paws::Transfer::ProtocolDetails>]

=item [Protocols => ArrayRef[Str|Undef]]

=item [SecurityPolicyName => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateServer>

Returns: a L<Paws::Transfer::UpdateServerResponse> instance

Updates the file transfer protocol-enabled server's properties after
that server has been created.

The C<UpdateServer> call returns the C<ServerId> of the server you
updated.


=head2 UpdateUser

=over

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]]

=item [HomeDirectoryType => Str]

=item [Policy => Str]

=item [PosixProfile => L<Paws::Transfer::PosixProfile>]

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateUser>

Returns: a L<Paws::Transfer::UpdateUserResponse> instance

Assigns new properties to a user. Parameters you pass modify any or all
of the following: the home directory, role, and policy for the
C<UserName> and C<ServerId> you specify.

The response returns the C<ServerId> and the C<UserName> for the
updated user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllServers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Servers, passing the object as the first parameter, and the string 'Servers' as the second parameter 

If not, it will return a a L<Paws::Transfer::ListServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

