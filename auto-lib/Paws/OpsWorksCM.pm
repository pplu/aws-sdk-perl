package Paws::OpsWorksCM;
  use Moose;
  sub service { 'opsworks-cm' }
  sub signing_name { 'opsworks-cm' }
  sub version { '2016-11-01' }
  sub target_prefix { 'OpsWorksCM_V2016_11_01' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::AssociateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::CreateBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::CreateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DeleteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNodeAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeNodeAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DisassociateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportServerEngineAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::ExportServerEngineAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::RestoreServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMaintenance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::StartMaintenance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::UpdateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServerEngineAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::UpdateServerEngineAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBackups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBackups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBackups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Backups }, @{ $next_result->Backups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Backups') foreach (@{ $result->Backups });
        $result = $self->DescribeBackups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Backups') foreach (@{ $result->Backups });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServerEvents }, @{ $next_result->ServerEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServerEvents') foreach (@{ $result->ServerEvents });
        $result = $self->DescribeEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServerEvents') foreach (@{ $result->ServerEvents });
    }

    return undef
  }
  sub DescribeAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeServers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Servers }, @{ $next_result->Servers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Servers') foreach (@{ $result->Servers });
        $result = $self->DescribeServers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Servers') foreach (@{ $result->Servers });
    }

    return undef
  }


  sub operations { qw/AssociateNode CreateBackup CreateServer DeleteBackup DeleteServer DescribeAccountAttributes DescribeBackups DescribeEvents DescribeNodeAssociationStatus DescribeServers DisassociateNode ExportServerEngineAttribute RestoreServer StartMaintenance UpdateServer UpdateServerEngineAttributes / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM - Perl Interface to AWS AWS OpsWorks for Chef Automate

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OpsWorksCM');
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

AWS OpsWorks CM

AWS OpsWorks for configuration management (CM) is a service that runs
and manages configuration management servers. You can use AWS OpsWorks
CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks
for Puppet Enterprise servers, and add or remove nodes for the servers
to manage.

B<Glossary of terms>

=over

=item *

B<Server>: A configuration management server that can be
highly-available. The configuration management server runs on an Amazon
Elastic Compute Cloud (EC2) instance, and may use various other AWS
services, such as Amazon Relational Database Service (RDS) and Elastic
Load Balancing. A server is a generic abstraction over the
configuration manager that you want to use, much like Amazon RDS. In
AWS OpsWorks CM, you do not start or stop servers. After you create
servers, they continue to run until they are deleted.

=item *

B<Engine>: The engine is the specific configuration manager that you
want to use. Valid values in this release include C<Chef> and
C<Puppet>.

=item *

B<Backup>: This is an application-level backup of the data that the
configuration manager stores. AWS OpsWorks CM creates an S3 bucket for
backups when you launch the first server. A backup maintains a snapshot
of a server's configuration-related attributes at the time the backup
starts.

=item *

B<Events>: Events are always related to a server. Events are written
during server creation, when health checks run, when backups are
created, when system maintenance is performed, etc. When you delete a
server, the server's events are also deleted.

=item *

B<Account attributes>: Every account has attributes that are assigned
in the AWS OpsWorks CM database. These attributes store information
about configuration limits (servers, backups, etc.) and your customer
account.

=back

B<Endpoints>

AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
connect to one of the following endpoints. Your servers can only be
accessed or managed within the endpoint in which they are created.

=over

=item *

opsworks-cm.us-east-1.amazonaws.com

=item *

opsworks-cm.us-east-2.amazonaws.com

=item *

opsworks-cm.us-west-1.amazonaws.com

=item *

opsworks-cm.us-west-2.amazonaws.com

=item *

opsworks-cm.ap-northeast-1.amazonaws.com

=item *

opsworks-cm.ap-southeast-1.amazonaws.com

=item *

opsworks-cm.ap-southeast-2.amazonaws.com

=item *

opsworks-cm.eu-central-1.amazonaws.com

=item *

opsworks-cm.eu-west-1.amazonaws.com

=back

B<Throttling limits>

All API operations allow for five requests per second with a burst of
10 requests per second.

For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks/>


=head1 METHODS

=head2 AssociateNode

=over

=item EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

=item NodeName => Str

=item ServerName => Str


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::AssociateNode>

Returns: a L<Paws::OpsWorksCM::AssociateNodeResponse> instance

Associates a new node with the server. For more information about how
to disassociate a node, see DisassociateNode.

On a Chef server: This command is an alternative to C<knife bootstrap>.

Example (Chef): C<aws opsworks-cm associate-node --server-name
I<MyServer> --node-name I<MyManagedNode> --engine-attributes
"Name=I<CHEF_ORGANIZATION>,Value=default"
"Name=I<CHEF_NODE_PUBLIC_KEY>,Value=I<public-key-pem>">

On a Puppet server, this command is an alternative to the C<puppet cert
sign> command that signs a Puppet node CSR.

Example (Chef): C<aws opsworks-cm associate-node --server-name
I<MyServer> --node-name I<MyManagedNode> --engine-attributes
"Name=I<PUPPET_NODE_CSR>,Value=I<csr-pem>">

A node can can only be associated with servers that are in a C<HEALTHY>
state. Otherwise, an C<InvalidStateException> is thrown. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
not valid. The AssociateNode API call can be integrated into Auto
Scaling configurations, AWS Cloudformation templates, or the user data
of a server's instance.


=head2 CreateBackup

=over

=item ServerName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateBackup>

Returns: a L<Paws::OpsWorksCM::CreateBackupResponse> instance

Creates an application-level backup of a server. While the server is in
the C<BACKING_UP> state, the server cannot be changed, and no
additional backup can be created.

Backups can be created for servers in C<RUNNING>, C<HEALTHY>, and
C<UNHEALTHY> states. By default, you can create a maximum of 50 manual
backups.

This operation is asynchronous.

A C<LimitExceededException> is thrown when the maximum number of manual
backups is reached. An C<InvalidStateException> is thrown when the
server is not in any of the following states: RUNNING, HEALTHY, or
UNHEALTHY. A C<ResourceNotFoundException> is thrown when the server is
not found. A C<ValidationException> is thrown when parameters of the
request are not valid.


=head2 CreateServer

=over

=item InstanceProfileArn => Str

=item InstanceType => Str

=item ServerName => Str

=item ServiceRoleArn => Str

=item [AssociatePublicIpAddress => Bool]

=item [BackupId => Str]

=item [BackupRetentionCount => Int]

=item [DisableAutomatedBackup => Bool]

=item [Engine => Str]

=item [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]]

=item [EngineModel => Str]

=item [EngineVersion => Str]

=item [KeyPair => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateServer>

Returns: a L<Paws::OpsWorksCM::CreateServerResponse> instance

Creates and immedately starts a new server. The server is ready to use
when it is in the C<HEALTHY> state. By default, you can create a
maximum of 10 servers.

This operation is asynchronous.

A C<LimitExceededException> is thrown when you have created the maximum
number of servers (10). A C<ResourceAlreadyExistsException> is thrown
when a server with the same name already exists in the account. A
C<ResourceNotFoundException> is thrown when you specify a backup ID
that is not valid or is for a backup that does not exist. A
C<ValidationException> is thrown when parameters of the request are not
valid.

If you do not specify a security group by adding the
C<SecurityGroupIds> parameter, AWS OpsWorks creates a new security
group.

I<Chef Automate:> The default security group opens the Chef server to
the world on TCP port 443. If a KeyName is present, AWS OpsWorks
enables SSH access. SSH is also open to the world on TCP port 22.

I<Puppet Enterprise:> The default security group opens TCP ports 22,
443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS
OpsWorks enables SSH access. SSH is also open to the world on TCP port
22.

By default, your server is accessible from any IP address. We recommend
that you update your security group rules to allow access from known IP
addresses and address ranges only. To edit security group rules, open
Security Groups in the navigation pane of the EC2 management console.


=head2 DeleteBackup

=over

=item BackupId => Str


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteBackup>

Returns: a L<Paws::OpsWorksCM::DeleteBackupResponse> instance

Deletes a backup. You can delete both manual and automated backups.
This operation is asynchronous.

An C<InvalidStateException> is thrown when a backup deletion is already
in progress. A C<ResourceNotFoundException> is thrown when the backup
does not exist. A C<ValidationException> is thrown when parameters of
the request are not valid.


=head2 DeleteServer

=over

=item ServerName => Str


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteServer>

Returns: a L<Paws::OpsWorksCM::DeleteServerResponse> instance

Deletes the server and the underlying AWS CloudFormation stacks
(including the server's EC2 instance). When you run this command, the
server state is updated to C<DELETING>. After the server is deleted, it
is no longer returned by C<DescribeServer> requests. If the AWS
CloudFormation stack cannot be deleted, the server cannot be deleted.

This operation is asynchronous.

An C<InvalidStateException> is thrown when a server deletion is already
in progress. A C<ResourceNotFoundException> is thrown when the server
does not exist. A C<ValidationException> is raised when parameters of
the request are not valid.


=head2 DescribeAccountAttributes






Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeAccountAttributes>

Returns: a L<Paws::OpsWorksCM::DescribeAccountAttributesResponse> instance

Describes your account attributes, and creates requests to increase
limits before they are reached or exceeded.

This operation is synchronous.


=head2 DescribeBackups

=over

=item [BackupId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServerName => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeBackups>

Returns: a L<Paws::OpsWorksCM::DescribeBackupsResponse> instance

Describes backups. The results are ordered by time, with newest backups
first. If you do not specify a BackupId or ServerName, the command
returns all backups.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the backup does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DescribeEvents

=over

=item ServerName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeEvents>

Returns: a L<Paws::OpsWorksCM::DescribeEventsResponse> instance

Describes events for a specified server. Results are ordered by time,
with newest events first.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DescribeNodeAssociationStatus

=over

=item NodeAssociationStatusToken => Str

=item ServerName => Str


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeNodeAssociationStatus>

Returns: a L<Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse> instance

Returns the current status of an existing association or disassociation
request.

A C<ResourceNotFoundException> is thrown when no recent association or
disassociation request with the specified token is found, or when the
server does not exist. A C<ValidationException> is raised when
parameters of the request are not valid.


=head2 DescribeServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServerName => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeServers>

Returns: a L<Paws::OpsWorksCM::DescribeServersResponse> instance

Lists all configuration management servers that are identified with
your account. Only the stored results from Amazon DynamoDB are
returned. AWS OpsWorks CM does not query other services.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DisassociateNode

=over

=item NodeName => Str

=item ServerName => Str

=item [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::DisassociateNode>

Returns: a L<Paws::OpsWorksCM::DisassociateNodeResponse> instance

Disassociates a node from an AWS OpsWorks CM server, and removes the
node from the server's managed nodes. After a node is disassociated,
the node key pair is no longer valid for accessing the configuration
manager's API. For more information about how to associate a node, see
AssociateNode.

A node can can only be disassociated from a server that is in a
C<HEALTHY> state. Otherwise, an C<InvalidStateException> is thrown. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
not valid.


=head2 ExportServerEngineAttribute

=over

=item ExportAttributeName => Str

=item ServerName => Str

=item [InputAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::ExportServerEngineAttribute>

Returns: a L<Paws::OpsWorksCM::ExportServerEngineAttributeResponse> instance

Exports a specified server engine attribute as a base64-encoded string.
For example, you can export user data that you can use in EC2 to
associate nodes with a server.

This operation is synchronous.

A C<ValidationException> is raised when parameters of the request are
not valid. A C<ResourceNotFoundException> is thrown when the server
does not exist. An C<InvalidStateException> is thrown when the server
is in any of the following states: CREATING, TERMINATED, FAILED or
DELETING.


=head2 RestoreServer

=over

=item BackupId => Str

=item ServerName => Str

=item [InstanceType => Str]

=item [KeyPair => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::RestoreServer>

Returns: a L<Paws::OpsWorksCM::RestoreServerResponse> instance

Restores a backup to a server that is in a C<CONNECTION_LOST>,
C<HEALTHY>, C<RUNNING>, C<UNHEALTHY>, or C<TERMINATED> state. When you
run RestoreServer, the server's EC2 instance is deleted, and a new EC2
instance is configured. RestoreServer maintains the existing server
endpoint, so configuration management of the server's client devices
(nodes) should continue to work.

This operation is asynchronous.

An C<InvalidStateException> is thrown when the server is not in a valid
state. A C<ResourceNotFoundException> is thrown when the server does
not exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 StartMaintenance

=over

=item ServerName => Str

=item [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::StartMaintenance>

Returns: a L<Paws::OpsWorksCM::StartMaintenanceResponse> instance

Manually starts server maintenance. This command can be useful if an
earlier maintenance attempt failed, and the underlying cause of
maintenance failure has been resolved. The server is in an
C<UNDER_MAINTENANCE> state while maintenance is in progress.

Maintenance can only be started on servers in C<HEALTHY> and
C<UNHEALTHY> states. Otherwise, an C<InvalidStateException> is thrown.
A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 UpdateServer

=over

=item ServerName => Str

=item [BackupRetentionCount => Int]

=item [DisableAutomatedBackup => Bool]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServer>

Returns: a L<Paws::OpsWorksCM::UpdateServerResponse> instance

Updates settings for a server.

This operation is synchronous.


=head2 UpdateServerEngineAttributes

=over

=item AttributeName => Str

=item ServerName => Str

=item [AttributeValue => Str]


=back

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServerEngineAttributes>

Returns: a L<Paws::OpsWorksCM::UpdateServerEngineAttributesResponse> instance

Updates engine-specific attributes on a specified server. The server
enters the C<MODIFYING> state when this operation is in progress. Only
one update can occur at a time. You can use this command to reset a
Chef server's private key (C<CHEF_PIVOTAL_KEY>) or a Puppet server's
admin password (C<PUPPET_ADMIN_PASSWORD>).

This operation is asynchronous.

This operation can only be called for servers in C<HEALTHY> or
C<UNHEALTHY> states. Otherwise, an C<InvalidStateException> is raised.
A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBackups(sub { },[BackupId => Str, MaxResults => Int, NextToken => Str, ServerName => Str])

=head2 DescribeAllBackups([BackupId => Str, MaxResults => Int, NextToken => Str, ServerName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Backups, passing the object as the first parameter, and the string 'Backups' as the second parameter 

If not, it will return a a L<Paws::OpsWorksCM::DescribeBackupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },ServerName => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllEvents(ServerName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServerEvents, passing the object as the first parameter, and the string 'ServerEvents' as the second parameter 

If not, it will return a a L<Paws::OpsWorksCM::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllServers(sub { },[MaxResults => Int, NextToken => Str, ServerName => Str])

=head2 DescribeAllServers([MaxResults => Int, NextToken => Str, ServerName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Servers, passing the object as the first parameter, and the string 'Servers' as the second parameter 

If not, it will return a a L<Paws::OpsWorksCM::DescribeServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

