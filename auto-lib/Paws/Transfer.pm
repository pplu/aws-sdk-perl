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


  sub operations { qw/CreateServer CreateUser DeleteServer DeleteSshPublicKey DeleteUser DescribeServer DescribeUser ImportSshPublicKey ListServers ListTagsForResource ListUsers StartServer StopServer TagResource TestIdentityProvider UntagResource UpdateServer UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer - Perl Interface to AWS AWS Transfer for SFTP

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



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05>


=head1 METHODS

=head2 CreateServer

=over

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [IdentityProviderType => Str]

=item [LoggingRole => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateServer>

Returns: a L<Paws::Transfer::CreateServerResponse> instance

Instantiates an autoscaling virtual server based on Secure File
Transfer Protocol (SFTP) in AWS. The call returns the C<ServerId>
property assigned by the service to the newly created server. Reference
this C<ServerId> property when you make updates to your server, or work
with users.

The response returns the C<ServerId> value for the newly created
server.


=head2 CreateUser

=over

=item Role => Str

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [Policy => Str]

=item [SshPublicKeyBody => Str]

=item [Tags => ArrayRef[L<Paws::Transfer::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transfer::CreateUser>

Returns: a L<Paws::Transfer::CreateUserResponse> instance

Adds a user and associate them with an existing Secure File Transfer
Protocol (SFTP) server. Using parameters for C<CreateUser>, you can
specify the user name, set the home directory, store the user's public
key, and assign the user's AWS Identity and Access Management (IAM)
role. You can also optionally add a scope-down policy, and assign
metadata with tags that can be used to group and search for users.

The response returns the C<UserName> and C<ServerId> values of the new
user for that server.


=head2 DeleteServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteServer>

Returns: nothing

Deletes the Secure File Transfer Protocol (SFTP) server that you
specify. If you used C<SERVICE_MANAGED> as your
C<IdentityProviderType>, you need to delete all users associated with
this server before deleting the server itself

No response returns from this call.


=head2 DeleteSshPublicKey

=over

=item ServerId => Str

=item SshPublicKeyId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteSshPublicKey>

Returns: nothing

Deletes a user's Secure Shell (SSH) public key.

No response is returned from this call.


=head2 DeleteUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DeleteUser>

Returns: nothing

Deletes the user belonging to the server you specify.

No response returns from this call.

When you delete a user from a server, the user's information is lost.


=head2 DescribeServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeServer>

Returns: a L<Paws::Transfer::DescribeServerResponse> instance

Describes the server that you specify by passing the C<ServerId>
parameter.

The response contains a description of the server's properties.


=head2 DescribeUser

=over

=item ServerId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Transfer::DescribeUser>

Returns: a L<Paws::Transfer::DescribeUserResponse> instance

Describes the user assigned to a specific server, as identified by its
C<ServerId> property.

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
C<UserName> value assigned to a specific server, identified by
C<ServerId>.

The response returns the C<UserName> value, the C<ServerId> value, and
the name of the C<SshPublicKeyId>.


=head2 ListServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListServers>

Returns: a L<Paws::Transfer::ListServersResponse> instance

Lists the Secure File Transfer Protocol (SFTP) servers that are
associated with your AWS account.


=head2 ListTagsForResource

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListTagsForResource>

Returns: a L<Paws::Transfer::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Number (ARN)
you specify. The resource can be a user, server, or role.


=head2 ListUsers

=over

=item ServerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::ListUsers>

Returns: a L<Paws::Transfer::ListUsersResponse> instance

Lists the users for the server that you specify by passing the
C<ServerId> parameter.


=head2 StartServer

=over

=item ServerId => Str


=back

Each argument is described in detail in: L<Paws::Transfer::StartServer>

Returns: nothing

Changes the state of a Secure File Transfer Protocol (SFTP) server from
C<OFFLINE> to C<ONLINE>. It has no impact on an SFTP server that is
already C<ONLINE>. An C<ONLINE> server can accept and process file
transfer jobs.

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

Changes the state of an SFTP server from C<ONLINE> to C<OFFLINE>. An
C<OFFLINE> server cannot accept and process file transfer jobs.
Information tied to your server such as server and user properties are
not affected by stopping your server. Stopping a server will not reduce
or impact your Secure File Transfer Protocol (SFTP) endpoint billing.

The states of C<STOPPING> indicates that the server is in an
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

=item [UserPassword => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::TestIdentityProvider>

Returns: a L<Paws::Transfer::TestIdentityProviderResponse> instance

If the C<IdentityProviderType> of the server is C<API_Gateway>, tests
whether your API Gateway is set up successfully. We highly recommend
that you call this method to test your authentication method as soon as
you create your server. By doing so, you can troubleshoot issues with
the API Gateway integration to ensure that your users can successfully
use the service.


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


=head2 UpdateServer

=over

=item ServerId => Str

=item [IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>]

=item [LoggingRole => Str]


=back

Each argument is described in detail in: L<Paws::Transfer::UpdateServer>

Returns: a L<Paws::Transfer::UpdateServerResponse> instance

Updates the server properties after that server has been created.

The C<UpdateServer> call returns the C<ServerId> of the Secure File
Transfer Protocol (SFTP) server you updated.


=head2 UpdateUser

=over

=item ServerId => Str

=item UserName => Str

=item [HomeDirectory => Str]

=item [Policy => Str]

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

