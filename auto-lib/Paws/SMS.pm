package Paws::SMS;
  use Moose;
  sub service { 'sms' }
  sub signing_name { 'sms' }
  sub version { '2016-10-24' }
  sub target_prefix { 'AWSServerMigrationService_V2016_10_24' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::CreateReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteAppLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteAppReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServerCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteServerCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DisassociateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GenerateChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GenerateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetAppLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetAppReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetReplicationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetReplicationRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportServerCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::ImportServerCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LaunchApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::LaunchApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::PutAppLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::PutAppReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAppReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::StartAppReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOnDemandReplicationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::StartOnDemandReplicationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAppReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::StopAppReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::TerminateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::UpdateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::UpdateReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetConnectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->connectorList }, @{ $next_result->connectorList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'connectorList') foreach (@{ $result->connectorList });
        $result = $self->GetConnectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'connectorList') foreach (@{ $result->connectorList });
    }

    return undef
  }
  sub GetAllReplicationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReplicationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetReplicationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->replicationJobList }, @{ $next_result->replicationJobList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'replicationJobList') foreach (@{ $result->replicationJobList });
        $result = $self->GetReplicationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'replicationJobList') foreach (@{ $result->replicationJobList });
    }

    return undef
  }
  sub GetAllReplicationRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReplicationRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetReplicationRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->replicationRunList }, @{ $next_result->replicationRunList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'replicationRunList') foreach (@{ $result->replicationRunList });
        $result = $self->GetReplicationRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'replicationRunList') foreach (@{ $result->replicationRunList });
    }

    return undef
  }
  sub GetAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->serverList }, @{ $next_result->serverList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serverList') foreach (@{ $result->serverList });
        $result = $self->GetServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serverList') foreach (@{ $result->serverList });
    }

    return undef
  }
  sub ListAllApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApps(@_, nextToken => $next_result->nextToken);
        push @{ $result->apps }, @{ $next_result->apps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apps') foreach (@{ $result->apps });
        $result = $self->ListApps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apps') foreach (@{ $result->apps });
    }

    return undef
  }


  sub operations { qw/CreateApp CreateReplicationJob DeleteApp DeleteAppLaunchConfiguration DeleteAppReplicationConfiguration DeleteReplicationJob DeleteServerCatalog DisassociateConnector GenerateChangeSet GenerateTemplate GetApp GetAppLaunchConfiguration GetAppReplicationConfiguration GetConnectors GetReplicationJobs GetReplicationRuns GetServers ImportServerCatalog LaunchApp ListApps PutAppLaunchConfiguration PutAppReplicationConfiguration StartAppReplication StartOnDemandReplicationRun StopAppReplication TerminateApp UpdateApp UpdateReplicationJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS - Perl Interface to AWS AWS Server Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SMS');
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

AAWS Sever Migration Service

This is the I<AWS Sever Migration Service API Reference>. It provides
descriptions, syntax, and usage examples for each of the actions and
data types for the AWS Sever Migration Service (AWS SMS). The topic for
each action shows the Query API request parameters and the XML
response. You can also view the XML request elements in the WSDL.

Alternatively, you can use one of the AWS SDKs to access an API that's
tailored to the programming language or platform that you're using. For
more information, see AWS SDKs (http://aws.amazon.com/tools/#SDKs).

To learn more about the Server Migration Service, see the following
resources:

=over

=item *

AWS Sever Migration Service product page
(https://aws.amazon.com/server-migration-service/)

=item *

AWS Sever Migration Service User Guide
(https://docs.aws.amazon.com/server-migration-service/latest/userguide/server-migration.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24>


=head1 METHODS

=head2 CreateApp

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]

=item [RoleName => Str]

=item [ServerGroups => ArrayRef[L<Paws::SMS::ServerGroup>]]

=item [Tags => ArrayRef[L<Paws::SMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::SMS::CreateApp>

Returns: a L<Paws::SMS::CreateAppResponse> instance

Creates an application. An application consists of one or more server
groups. Each server group contain one or more servers.


=head2 CreateReplicationJob

=over

=item SeedReplicationTime => Str

=item ServerId => Str

=item [Description => Str]

=item [Encrypted => Bool]

=item [Frequency => Int]

=item [KmsKeyId => Str]

=item [LicenseType => Str]

=item [NumberOfRecentAmisToKeep => Int]

=item [RoleName => Str]

=item [RunOnce => Bool]


=back

Each argument is described in detail in: L<Paws::SMS::CreateReplicationJob>

Returns: a L<Paws::SMS::CreateReplicationJobResponse> instance

Creates a replication job. The replication job schedules periodic
replication runs to replicate your server to AWS. Each replication run
creates an Amazon Machine Image (AMI).


=head2 DeleteApp

=over

=item [AppId => Str]

=item [ForceStopAppReplication => Bool]

=item [ForceTerminateApp => Bool]


=back

Each argument is described in detail in: L<Paws::SMS::DeleteApp>

Returns: a L<Paws::SMS::DeleteAppResponse> instance

Deletes an existing application. Optionally deletes the launched stack
associated with the application and all AWS SMS replication jobs for
servers in the application.


=head2 DeleteAppLaunchConfiguration

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::DeleteAppLaunchConfiguration>

Returns: a L<Paws::SMS::DeleteAppLaunchConfigurationResponse> instance

Deletes existing launch configuration for an application.


=head2 DeleteAppReplicationConfiguration

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::DeleteAppReplicationConfiguration>

Returns: a L<Paws::SMS::DeleteAppReplicationConfigurationResponse> instance

Deletes existing replication configuration for an application.


=head2 DeleteReplicationJob

=over

=item ReplicationJobId => Str


=back

Each argument is described in detail in: L<Paws::SMS::DeleteReplicationJob>

Returns: a L<Paws::SMS::DeleteReplicationJobResponse> instance

Deletes the specified replication job.

After you delete a replication job, there are no further replication
runs. AWS deletes the contents of the Amazon S3 bucket used to store
AWS SMS artifacts. The AMIs created by the replication runs are not
deleted.


=head2 DeleteServerCatalog






Each argument is described in detail in: L<Paws::SMS::DeleteServerCatalog>

Returns: a L<Paws::SMS::DeleteServerCatalogResponse> instance

Deletes all servers from your server catalog.


=head2 DisassociateConnector

=over

=item ConnectorId => Str


=back

Each argument is described in detail in: L<Paws::SMS::DisassociateConnector>

Returns: a L<Paws::SMS::DisassociateConnectorResponse> instance

Disassociates the specified connector from AWS SMS.

After you disassociate a connector, it is no longer available to
support replication jobs.


=head2 GenerateChangeSet

=over

=item [AppId => Str]

=item [ChangesetFormat => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GenerateChangeSet>

Returns: a L<Paws::SMS::GenerateChangeSetResponse> instance

Generates a target change set for a currently launched stack and writes
it to an Amazon S3 object in the customerE<rsquo>s Amazon S3 bucket.


=head2 GenerateTemplate

=over

=item [AppId => Str]

=item [TemplateFormat => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GenerateTemplate>

Returns: a L<Paws::SMS::GenerateTemplateResponse> instance

Generates an Amazon CloudFormation template based on the current launch
configuration and writes it to an Amazon S3 object in the
customerE<rsquo>s Amazon S3 bucket.


=head2 GetApp

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetApp>

Returns: a L<Paws::SMS::GetAppResponse> instance

Retrieve information about an application.


=head2 GetAppLaunchConfiguration

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetAppLaunchConfiguration>

Returns: a L<Paws::SMS::GetAppLaunchConfigurationResponse> instance

Retrieves the application launch configuration associated with an
application.


=head2 GetAppReplicationConfiguration

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetAppReplicationConfiguration>

Returns: a L<Paws::SMS::GetAppReplicationConfigurationResponse> instance

Retrieves an application replication configuration associatd with an
application.


=head2 GetConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetConnectors>

Returns: a L<Paws::SMS::GetConnectorsResponse> instance

Describes the connectors registered with the AWS SMS.


=head2 GetReplicationJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplicationJobId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetReplicationJobs>

Returns: a L<Paws::SMS::GetReplicationJobsResponse> instance

Describes the specified replication job or all of your replication
jobs.


=head2 GetReplicationRuns

=over

=item ReplicationJobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SMS::GetReplicationRuns>

Returns: a L<Paws::SMS::GetReplicationRunsResponse> instance

Describes the replication runs for the specified replication job.


=head2 GetServers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VmServerAddressList => ArrayRef[L<Paws::SMS::VmServerAddress>]]


=back

Each argument is described in detail in: L<Paws::SMS::GetServers>

Returns: a L<Paws::SMS::GetServersResponse> instance

Describes the servers in your server catalog.

Before you can describe your servers, you must import them using
ImportServerCatalog.


=head2 ImportServerCatalog






Each argument is described in detail in: L<Paws::SMS::ImportServerCatalog>

Returns: a L<Paws::SMS::ImportServerCatalogResponse> instance

Gathers a complete list of on-premises servers. Connectors must be
installed and monitoring all servers that you want to import.

This call returns immediately, but might take additional time to
retrieve all the servers.


=head2 LaunchApp

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::LaunchApp>

Returns: a L<Paws::SMS::LaunchAppResponse> instance

Launches an application stack.


=head2 ListApps

=over

=item [AppIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SMS::ListApps>

Returns: a L<Paws::SMS::ListAppsResponse> instance

Returns a list of summaries for all applications.


=head2 PutAppLaunchConfiguration

=over

=item [AppId => Str]

=item [RoleName => Str]

=item [ServerGroupLaunchConfigurations => ArrayRef[L<Paws::SMS::ServerGroupLaunchConfiguration>]]


=back

Each argument is described in detail in: L<Paws::SMS::PutAppLaunchConfiguration>

Returns: a L<Paws::SMS::PutAppLaunchConfigurationResponse> instance

Creates a launch configuration for an application.


=head2 PutAppReplicationConfiguration

=over

=item [AppId => Str]

=item [ServerGroupReplicationConfigurations => ArrayRef[L<Paws::SMS::ServerGroupReplicationConfiguration>]]


=back

Each argument is described in detail in: L<Paws::SMS::PutAppReplicationConfiguration>

Returns: a L<Paws::SMS::PutAppReplicationConfigurationResponse> instance

Creates or updates a replication configuration for an application.


=head2 StartAppReplication

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::StartAppReplication>

Returns: a L<Paws::SMS::StartAppReplicationResponse> instance

Starts replicating an application.


=head2 StartOnDemandReplicationRun

=over

=item ReplicationJobId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SMS::StartOnDemandReplicationRun>

Returns: a L<Paws::SMS::StartOnDemandReplicationRunResponse> instance

Starts an on-demand replication run for the specified replication job.
This replication run starts immediately. This replication run is in
addition to the ones already scheduled.

There is a limit on the number of on-demand replications runs you can
request in a 24-hour period.


=head2 StopAppReplication

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::StopAppReplication>

Returns: a L<Paws::SMS::StopAppReplicationResponse> instance

Stops replicating an application.


=head2 TerminateApp

=over

=item [AppId => Str]


=back

Each argument is described in detail in: L<Paws::SMS::TerminateApp>

Returns: a L<Paws::SMS::TerminateAppResponse> instance

Terminates the stack for an application.


=head2 UpdateApp

=over

=item [AppId => Str]

=item [Description => Str]

=item [Name => Str]

=item [RoleName => Str]

=item [ServerGroups => ArrayRef[L<Paws::SMS::ServerGroup>]]

=item [Tags => ArrayRef[L<Paws::SMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::SMS::UpdateApp>

Returns: a L<Paws::SMS::UpdateAppResponse> instance

Updates an application.


=head2 UpdateReplicationJob

=over

=item ReplicationJobId => Str

=item [Description => Str]

=item [Encrypted => Bool]

=item [Frequency => Int]

=item [KmsKeyId => Str]

=item [LicenseType => Str]

=item [NextReplicationRunStartTime => Str]

=item [NumberOfRecentAmisToKeep => Int]

=item [RoleName => Str]


=back

Each argument is described in detail in: L<Paws::SMS::UpdateReplicationJob>

Returns: a L<Paws::SMS::UpdateReplicationJobResponse> instance

Updates the specified settings for the specified replication job.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllConnectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllConnectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - connectorList, passing the object as the first parameter, and the string 'connectorList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReplicationJobs(sub { },[MaxResults => Int, NextToken => Str, ReplicationJobId => Str])

=head2 GetAllReplicationJobs([MaxResults => Int, NextToken => Str, ReplicationJobId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - replicationJobList, passing the object as the first parameter, and the string 'replicationJobList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetReplicationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReplicationRuns(sub { },ReplicationJobId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllReplicationRuns(ReplicationJobId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - replicationRunList, passing the object as the first parameter, and the string 'replicationRunList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetReplicationRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllServers(sub { },[MaxResults => Int, NextToken => Str, VmServerAddressList => ArrayRef[L<Paws::SMS::VmServerAddress>]])

=head2 GetAllServers([MaxResults => Int, NextToken => Str, VmServerAddressList => ArrayRef[L<Paws::SMS::VmServerAddress>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serverList, passing the object as the first parameter, and the string 'serverList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApps(sub { },[AppIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllApps([AppIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apps, passing the object as the first parameter, and the string 'apps' as the second parameter 

If not, it will return a a L<Paws::SMS::ListAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

