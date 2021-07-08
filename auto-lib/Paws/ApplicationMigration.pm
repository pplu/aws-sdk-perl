package Paws::ApplicationMigration;
  use Moose;
  sub service { 'mgn' }
  sub signing_name { 'mgn' }
  sub version { '2020-02-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ChangeServerLifeCycleState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ChangeServerLifeCycleState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::CreateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DeleteSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobLogItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeJobLogItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeReplicationConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DescribeSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectFromService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::DisconnectFromService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FinalizeCutover {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::FinalizeCutover', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::GetLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::GetReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitializeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::InitializeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MarkAsArchived {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::MarkAsArchived', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryDataReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::RetryDataReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCutover {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartCutover', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::StartTest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateTargetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::TerminateTargetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllJobLogItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobLogItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobLogItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobLogItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllReplicationConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllSourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeSourceServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeSourceServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/ChangeServerLifeCycleState CreateReplicationConfigurationTemplate DeleteJob DeleteReplicationConfigurationTemplate DeleteSourceServer DescribeJobLogItems DescribeJobs DescribeReplicationConfigurationTemplates DescribeSourceServers DisconnectFromService FinalizeCutover GetLaunchConfiguration GetReplicationConfiguration InitializeService ListTagsForResource MarkAsArchived RetryDataReplication StartCutover StartTest TagResource TerminateTargetInstances UntagResource UpdateLaunchConfiguration UpdateReplicationConfiguration UpdateReplicationConfigurationTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration - Perl Interface to AWS Application Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationMigration');
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

The Application Migration Service service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26>


=head1 METHODS

=head2 ChangeServerLifeCycleState

=over

=item LifeCycle => L<Paws::ApplicationMigration::ChangeServerLifeCycleStateSourceServerLifecycle>

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ChangeServerLifeCycleState>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Allows the user to set the SourceServer.LifeCycle.state property for
specific Source Server IDs to one of the following: READY_FOR_TEST or
READY_FOR_CUTOVER. This command only works if the Source Server is
already launchable (dataReplicationInfo.lagDuration is not null.)


=head2 CreateReplicationConfigurationTemplate

=over

=item AssociateDefaultSecurityGroup => Bool

=item BandwidthThrottling => Int

=item CreatePublicIP => Bool

=item DataPlaneRouting => Str

=item DefaultLargeStagingDiskType => Str

=item EbsEncryption => Str

=item ReplicationServerInstanceType => Str

=item ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

=item StagingAreaSubnetId => Str

=item StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>

=item UseDedicatedReplicationServer => Bool

=item [EbsEncryptionKeyArn => Str]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::CreateReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::ReplicationConfigurationTemplate> instance

Creates a new ReplicationConfigurationTemplate.


=head2 DeleteJob

=over

=item JobID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteJob>

Returns: a L<Paws::ApplicationMigration::DeleteJobResponse> instance

Deletes a single Job by ID.


=head2 DeleteReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::DeleteReplicationConfigurationTemplateResponse> instance

Deletes a single Replication Configuration Template by ID


=head2 DeleteSourceServer

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DeleteSourceServer>

Returns: a L<Paws::ApplicationMigration::DeleteSourceServerResponse> instance

Deletes a single source server by ID.


=head2 DescribeJobLogItems

=over

=item JobID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeJobLogItems>

Returns: a L<Paws::ApplicationMigration::DescribeJobLogItemsResponse> instance

Retrieves detailed Job log with paging.


=head2 DescribeJobs

=over

=item Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeJobs>

Returns: a L<Paws::ApplicationMigration::DescribeJobsResponse> instance

Returns a list of Jobs. Use the JobsID and fromDate and toData filters
to limit which jobs are returned. The response is sorted by
creationDataTime - latest date first. Jobs are normaly created by the
StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are
also created by DiagnosticLaunch and TerminateDiagnosticInstances,
which are APIs available only to *Support* and only used in response to
relevant support tickets.


=head2 DescribeReplicationConfigurationTemplates

=over

=item ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplates>

Returns: a L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse> instance

Lists all ReplicationConfigurationTemplates, filtered by Source Server
IDs.


=head2 DescribeSourceServers

=over

=item Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DescribeSourceServers>

Returns: a L<Paws::ApplicationMigration::DescribeSourceServersResponse> instance

Retrieves all SourceServers or multiple SourceServers by ID.


=head2 DisconnectFromService

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::DisconnectFromService>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Disconnects specific Source Servers from Application Migration Service.
Data replication is stopped immediately. All AWS resources created by
Application Migration Service for enabling the replication of these
source servers will be terminated / deleted within 90 minutes. Launched
Test or Cutover instances will NOT be terminated. If the agent on the
source server has not been prevented from communciating with the
Application Migration Service service, then it will receive a command
to uninstall itself (within approximately 10 minutes). The following
properties of the SourceServer will be changed immediately:
dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
The totalStorageBytes property for each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDurationwill
be nullified.


=head2 FinalizeCutover

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::FinalizeCutover>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Finalizes the cutover immediately for specific Source Servers. All AWS
resources created by Application Migration Service for enabling the
replication of these source servers will be terminated / deleted within
90 minutes. Launched Test or Cutover instances will NOT be terminated.
The AWS Replication Agent will receive a command to uninstall itself
(within 10 minutes). The following properties of the SourceServer will
be changed immediately: dataReplicationInfo.dataReplicationState will
be to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to
CUTOVER; The totalStorageBytes property fo each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDurationwill
be nullified.


=head2 GetLaunchConfiguration

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::GetLaunchConfiguration>

Returns: a L<Paws::ApplicationMigration::LaunchConfiguration> instance

Lists all LaunchConfigurations available, filtered by Source Server
IDs.


=head2 GetReplicationConfiguration

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::GetReplicationConfiguration>

Returns: a L<Paws::ApplicationMigration::ReplicationConfiguration> instance

Lists all ReplicationConfigurations, filtered by Source Server ID.


=head2 InitializeService






Each argument is described in detail in: L<Paws::ApplicationMigration::InitializeService>

Returns: a L<Paws::ApplicationMigration::InitializeServiceResponse> instance

Initialize Application Migration Service.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::ListTagsForResource>

Returns: a L<Paws::ApplicationMigration::ListTagsForResourceResponse> instance

List all tags for your Application Migration Service resources.


=head2 MarkAsArchived

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::MarkAsArchived>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Archives specific Source Servers by setting the SourceServer.isArchived
property to true for specified SourceServers by ID. This command only
works for SourceServers with a lifecycle.state which equals
DISCONNECTED or CUTOVER.


=head2 RetryDataReplication

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::RetryDataReplication>

Returns: a L<Paws::ApplicationMigration::SourceServer> instance

Causes the data replication initiation sequence to begin immediately
upon next Handshake for specified SourceServer IDs, regardless of when
the previous initiation started. This command will not work if the
SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.


=head2 StartCutover

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartCutover>

Returns: a L<Paws::ApplicationMigration::StartCutoverResponse> instance

Launches a Cutover Instance for specific Source Servers. This command
starts a LAUNCH job whose initiatedBy property is StartCutover and
changes the SourceServer.lifeCycle.state property to CUTTING_OVER.


=head2 StartTest

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::StartTest>

Returns: a L<Paws::ApplicationMigration::StartTestResponse> instance

Lauches a Test Instance for specific Source Servers. This command
starts a LAUNCH job whose initiatedBy property is StartTest and changes
the SourceServer.lifeCycle.state property to TESTING.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ApplicationMigration::TagsMap>


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::TagResource>

Returns: nothing

Adds or overwrites only the specified tags for the specified
Application Migration Service resource or resources. When you specify
an existing tag key, the value is overwritten with the new value. Each
resource can have a maximum of 50 tags. Each tag consists of a key and
optional value.


=head2 TerminateTargetInstances

=over

=item SourceServerIDs => ArrayRef[Str|Undef]

=item [Tags => L<Paws::ApplicationMigration::TagsMap>]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::TerminateTargetInstances>

Returns: a L<Paws::ApplicationMigration::TerminateTargetInstancesResponse> instance

Starts a job that terminates specific launched EC2 Test and Cutover
instances. This command will not work for any Source Server with a
lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UntagResource>

Returns: nothing

Deletes the specified set of tags from the specified set of Application
Migration Service resources.


=head2 UpdateLaunchConfiguration

=over

=item SourceServerID => Str

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [LaunchDisposition => Str]

=item [Licensing => L<Paws::ApplicationMigration::Licensing>]

=item [Name => Str]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateLaunchConfiguration>

Returns: a L<Paws::ApplicationMigration::LaunchConfiguration> instance

Updates multiple LaunchConfigurations by Source Server ID.


=head2 UpdateReplicationConfiguration

=over

=item SourceServerID => Str

=item [AssociateDefaultSecurityGroup => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [Name => Str]

=item [ReplicatedDisks => ArrayRef[L<Paws::ApplicationMigration::ReplicationConfigurationReplicatedDisk>]]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateReplicationConfiguration>

Returns: a L<Paws::ApplicationMigration::ReplicationConfiguration> instance

Allows you to update multiple ReplicationConfigurations by Source
Server ID.


=head2 UpdateReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str

=item [Arn => Str]

=item [AssociateDefaultSecurityGroup => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::ApplicationMigration::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]


=back

Each argument is described in detail in: L<Paws::ApplicationMigration::UpdateReplicationConfigurationTemplate>

Returns: a L<Paws::ApplicationMigration::ReplicationConfigurationTemplate> instance

Updates multiple ReplicationConfigurationTemplates by ID.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllJobLogItems(sub { },JobID => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobLogItems(JobID => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeJobLogItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllJobs(sub { },Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobs(Filters => L<Paws::ApplicationMigration::DescribeJobsRequestFilters>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationConfigurationTemplates(sub { },ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str])

=head2 DescribeAllReplicationConfigurationTemplates(ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSourceServers(sub { },Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllSourceServers(Filters => L<Paws::ApplicationMigration::DescribeSourceServersRequestFilters>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApplicationMigration::DescribeSourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

