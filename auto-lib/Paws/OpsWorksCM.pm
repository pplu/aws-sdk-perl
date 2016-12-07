package Paws::OpsWorksCM;
  use Moose;
  sub service { 'opsworks-cm' }
  sub version { '2016-11-01' }
  sub target_prefix { 'OpsWorksCM_V2016_11_01' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  


  sub operations { qw/AssociateNode CreateBackup CreateServer DeleteBackup DeleteServer DescribeAccountAttributes DescribeBackups DescribeEvents DescribeNodeAssociationStatus DescribeServers DisassociateNode RestoreServer StartMaintenance UpdateServer UpdateServerEngineAttributes / }

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

AWS OpsWorks for Chef Automate

A service that runs and manages configuration management servers.

Glossary of terms

=over

=item *

B<Server>: A server is a configuration management server, and can be
highly-available. The configuration manager runs on your instances by
using various AWS services, such as Amazon Elastic Compute Cloud (EC2),
and potentially Amazon Relational Database Service (RDS). A server is a
generic abstraction over the configuration manager that you want to
use, much like Amazon RDS. In AWS OpsWorks for Chef Automate, you do
not start or stop servers. After you create servers, they continue to
run until they are deleted.

=item *

B<Engine>: The specific configuration manager that you want to use
(such as C<Chef>) is the engine.

=item *

B<Backup>: This is an application-level backup of the data that the
configuration manager stores. A backup creates a .tar.gz file that is
stored in an Amazon Simple Storage Service (S3) bucket in your account.
AWS OpsWorks for Chef Automate creates the S3 bucket when you launch
the first instance. A backup maintains a snapshot of all of a server's
important attributes at the time of the backup.

=item *

B<Events>: Events are always related to a server. Events are written
during server creation, when health checks run, when backups are
created, etc. When you delete a server, the server's events are also
deleted.

=item *

B<AccountAttributes>: Every account has attributes that are assigned in
the AWS OpsWorks for Chef Automate database. These attributes store
information about configuration limits (servers, backups, etc.) and
your customer account.

=back

Throttling limits

All API operations allow for 5 requests per second with a burst of 10
requests per second.

=head1 METHODS

=head2 AssociateNode(NodeName => Str, ServerName => Str, [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]])

Each argument is described in detail in: L<Paws::OpsWorksCM::AssociateNode>

Returns: a L<Paws::OpsWorksCM::AssociateNodeResponse> instance

  


=head2 CreateBackup(ServerName => Str, [Description => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateBackup>

Returns: a L<Paws::OpsWorksCM::CreateBackupResponse> instance

  Creates an application-level backup of a server. While the server is
C<BACKING_UP>, the server can not be modified and no additional backup
can be created.

Backups can be created for C<RUNNING>, C<HEALTHY> and C<UNHEALTHY>
servers.

This operation is asnychronous.

By default 50 manual backups can be created.

A C<LimitExceededException> is thrown then the maximum number of manual
backup is reached. A C<InvalidStateException> is thrown when the server
is not in any of RUNNING, HEALTHY, UNHEALTHY. A
C<ResourceNotFoundException> is thrown when the server is not found. A
C<ValidationException> is thrown when parameters of the request are not
valid.


=head2 CreateServer(InstanceProfileArn => Str, ServerName => Str, ServiceRoleArn => Str, [BackupId => Str, BackupRetentionCount => Int, DisableAutomatedBackup => Bool, Engine => Str, EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>], EngineModel => Str, EngineVersion => Str, InstanceType => Str, KeyPair => Str, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, SecurityGroupIds => ArrayRef[Str|Undef], SubnetIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateServer>

Returns: a L<Paws::OpsWorksCM::CreateServerResponse> instance

  Creates and immedately starts a new Server. The server can be used once
it has reached the C<HEALTHY> state.

This operation is asnychronous.

A C<LimitExceededException> is thrown then the maximum number of server
backup is reached. A C<ResourceAlreadyExistsException> is raise when a
server with the same name already exists in the account. A
C<ResourceNotFoundException> is thrown when a backupId is passed, but
the backup does not exist. A C<ValidationException> is thrown when
parameters of the request are not valid.

By default 10 servers can be created. A C<LimitExceededException> is
raised when the limit is exceeded.

When no security groups are provided by using C<SecurityGroupIds>, AWS
OpsWorks creates a new security group. This security group opens the
Chef server to the world on TCP port 443. If a KeyName is present, SSH
access is enabled. SSH is also open to the world on TCP port 22.

By default, the Chef Server is accessible from any IP address. We
recommend that you update your security group rules to allow access
from known IP addresses and address ranges only. To edit security group
rules, open Security Groups in the navigation pane of the EC2
management console.


=head2 DeleteBackup(BackupId => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteBackup>

Returns: a L<Paws::OpsWorksCM::DeleteBackupResponse> instance

  Deletes a backup. You can delete both manual and automated backups.

This operation is asynchronous.

A C<InvalidStateException> is thrown then a backup is already deleting.
A C<ResourceNotFoundException> is thrown when the backup does not
exist. A C<ValidationException> is thrown when parameters of the
request are not valid.


=head2 DeleteServer(ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteServer>

Returns: a L<Paws::OpsWorksCM::DeleteServerResponse> instance

  Deletes the server and the underlying AWS CloudFormation stack
(including the server's EC2 instance). The server status updated to
C<DELETING>. Once the server is successfully deleted, it will no longer
be returned by C<DescribeServer> requests. If the AWS CloudFormation
stack cannot be deleted, the server cannot be deleted.

This operation is asynchronous.

A C<InvalidStateException> is thrown then a server is already deleting.
A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are invalid.


=head2 DescribeAccountAttributes()

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeAccountAttributes>

Returns: a L<Paws::OpsWorksCM::DescribeAccountAttributesResponse> instance

  Describes your account attributes, and creates requests to increase
limits before they are reached or exceeded.

This operation is synchronous.


=head2 DescribeBackups([BackupId => Str, MaxResults => Int, NextToken => Str, ServerName => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeBackups>

Returns: a L<Paws::OpsWorksCM::DescribeBackupsResponse> instance

  Describes backups. The results are ordered by time, with newest backups
first. If you do not specify a BackupId or ServerName, the command
returns all backups.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the backup does not
exist. A C<ValidationException> is raised when parameters of the
request are invalid.


=head2 DescribeEvents(ServerName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeEvents>

Returns: a L<Paws::OpsWorksCM::DescribeEventsResponse> instance

  Describes events for a specified server. Results are ordered by time,
with newest events first.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are invalid.


=head2 DescribeNodeAssociationStatus(NodeAssociationStatusToken => Str, ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeNodeAssociationStatus>

Returns: a L<Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse> instance

  


=head2 DescribeServers([MaxResults => Int, NextToken => Str, ServerName => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeServers>

Returns: a L<Paws::OpsWorksCM::DescribeServersResponse> instance

  Lists all configuration management servers that are identified with
your account. Only the stored results from Amazon DynamoDB are
returned. AWS OpsWorks for Chef Automate does not query other services.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are invalid.


=head2 DisassociateNode(NodeName => Str, ServerName => Str, [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]])

Each argument is described in detail in: L<Paws::OpsWorksCM::DisassociateNode>

Returns: a L<Paws::OpsWorksCM::DisassociateNodeResponse> instance

  


=head2 RestoreServer(BackupId => Str, ServerName => Str, [InstanceType => Str, KeyPair => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::RestoreServer>

Returns: a L<Paws::OpsWorksCM::RestoreServerResponse> instance

  Restores a backup to a server that is in a C<RUNNING>, C<FAILED>, or
C<HEALTHY> state. When you run RestoreServer, the server's EC2 instance
is deleted, and a new EC2 instance is configured. RestoreServer
maintains the existing server endpoint, so configuration management of
all of the server's client devices should continue to work.

This operation is asynchronous.

A C<InvalidStateException> is thrown when the server is not in a valid
state. A C<ResourceNotFoundException> is thrown when the server does
not exist. A C<ValidationException> is raised when parameters of the
request are invalid.


=head2 StartMaintenance(ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::StartMaintenance>

Returns: a L<Paws::OpsWorksCM::StartMaintenanceResponse> instance

  Manually starts server maintenance. This command can be useful if an
earlier maintenance attempt failed, and the underlying cause of
maintenance failure has been resolved. The server will switch to
C<UNDER_MAINTENANCE> state, while maintenace is in progress.

Maintenace can only be started for C<HEALTHY> and C<UNHEALTHY> servers.
A C<InvalidStateException> is thrown otherwise. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
invalid.


=head2 UpdateServer(ServerName => Str, [BackupRetentionCount => Int, DisableAutomatedBackup => Bool, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServer>

Returns: a L<Paws::OpsWorksCM::UpdateServerResponse> instance

  Updates settings for a server.

This operation is synchronous.


=head2 UpdateServerEngineAttributes(AttributeName => Str, ServerName => Str, [AttributeValue => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServerEngineAttributes>

Returns: a L<Paws::OpsWorksCM::UpdateServerEngineAttributesResponse> instance

  Updates engine specific attributes on a specified server. Server will
enter the C<MODIFYING> state when this operation is in progress. Only
one update can take place at a time.

This operation can be use to reset Chef Server main API key
(C<CHEF_PIVOTAL_KEY>).

This operation is asynchronous.

This operation can only be called for C<HEALTHY> and C<UNHEALTHY>
servers. Otherwise a C<InvalidStateException> is raised. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
invalid.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

