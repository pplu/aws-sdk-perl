package Paws::GameLift;
  use Moose;
  sub service { 'gamelift' }
  sub version { '2015-10-01' }
  sub target_prefix { 'GameLift' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEC2InstanceLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeEC2InstanceLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeScalingPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGameSessionLogUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetGameSessionLogUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestUploadCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::RequestUploadCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ResolveAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::SearchGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateAlias CreateBuild CreateFleet CreateGameSession CreatePlayerSession CreatePlayerSessions DeleteAlias DeleteBuild DeleteFleet DeleteScalingPolicy DescribeAlias DescribeBuild DescribeEC2InstanceLimits DescribeFleetAttributes DescribeFleetCapacity DescribeFleetEvents DescribeFleetPortSettings DescribeFleetUtilization DescribeGameSessionDetails DescribeGameSessions DescribeInstances DescribePlayerSessions DescribeRuntimeConfiguration DescribeScalingPolicies GetGameSessionLogUrl ListAliases ListBuilds ListFleets PutScalingPolicy RequestUploadCredentials ResolveAlias SearchGameSessions UpdateAlias UpdateBuild UpdateFleetAttributes UpdateFleetCapacity UpdateFleetPortSettings UpdateGameSession UpdateRuntimeConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift - Perl Interface to AWS Amazon GameLift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GameLift');
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

Amazon GameLift Service

Welcome to the I<Amazon GameLift API Reference>. Amazon GameLift is a
managed Amazon Web Services (AWS) service for developers who need a
scalable, server-based solution for multiplayer games. Amazon GameLift
provides setup and deployment of game servers, and handles
infrastructure scaling and session management.

This reference describes the low-level service API for GameLift. You
can call this API directly or use the AWS SDK for your preferred
language. The AWS SDK includes a set of high-level GameLift actions
multiplayer game sessions. Alternatively, you can use the AWS
command-line interface (CLI) tool, which includes commands for
GameLift. For administrative actions, you can also use the Amazon
GameLift console.

B<More Resources>

=over

=item *

Amazon GameLift Developer Guide: Learn more about GameLift features and
how to use them

=item *

Lumberyard and GameLift Tutorials: Get started fast with walkthroughs
and sample projects

=item *

GameDev Blog: Stay up to date with new features and techniques

=item *

GameDev Forums: Connect with the GameDev community

=back

B<Manage Games and Players Through GameLift>

Call these actions from your game clients and/or services to create and
manage multiplayer game sessions and player sessions.

=over

=item *

B<Game sessions:>

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

UpdateGameSession

=item *

SearchGameSessions

=back

=item *

B<Player sessions:>

=over

=item *

CreatePlayerSession

=item *

CreatePlayerSessions

=item *

DescribePlayerSessions

=back

=item *

B<Other actions:>

=over

=item *

GetGameSessionLogUrl

=back

=back

B<Set Up and Manage Game Servers>

Use these administrative actions to configure GameLift to host your
game servers. When setting up GameLift, you will need to (1) configure
a build for your game and upload build files, and (2) set up one or
more fleets to host game sessions. Once you've created and activated a
fleet, you can assign aliases to it, scale capacity, track performance
and utilization, etc.

=over

=item *

B<Game builds:>

=over

=item *

ListBuilds

=item *

CreateBuild

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=item *

RequestUploadCredentials

=back

=item *

B<Fleets:>

=over

=item *

ListFleets

=item *

CreateFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=item *

DescribeRuntimeConfiguration

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

DeleteFleet

=back

=item *

B<Manage fleet aliases:>

=over

=item *

ListAliases

=item *

CreateAlias

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back

=item *

B<Manage autoscaling:>

=over

=item *

PutScalingPolicy

=item *

DescribeScalingPolicies

=item *

DeleteScalingPolicy

=back

=back

To view changes to the API, see the GameLift Document History page.

=head1 METHODS

=head2 CreateAlias(Name => Str, RoutingStrategy => L<Paws::GameLift::RoutingStrategy>, [Description => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateAlias>

Returns: a L<Paws::GameLift::CreateAliasOutput> instance

  Creates an alias for a fleet. You can use an alias to anonymize your
fleet by referencing an alias instead of a specific fleet when you
create game sessions. Amazon GameLift supports two types of routing
strategies for aliases: simple and terminal. Use a simple alias to
point to an active fleet. Use a terminal alias to display a message to
incoming traffic instead of routing players to an active fleet. This
option is useful when a game server is no longer supported but you want
to provide better messaging than a standard 404 error.

To create a fleet alias, specify an alias name, routing strategy, and
optional description. If successful, a new alias record is returned,
including an alias ID, which you can reference when creating a game
session. To reassign the alias to another fleet ID, call UpdateAlias.


=head2 CreateBuild([Name => Str, OperatingSystem => Str, StorageLocation => L<Paws::GameLift::S3Location>, Version => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateBuild>

Returns: a L<Paws::GameLift::CreateBuildOutput> instance

  Initializes a new build record and generates information required to
upload a game build to Amazon GameLift. Once the build record has been
created and its status is C<INITIALIZED>, you can upload your game
build.

Do not use this API action unless you are using your own Amazon Simple
Storage Service (Amazon S3) client and need to manually upload your
build files. Instead, to create a build, use the CLI command
C<upload-build>, which creates a new build record and uploads the build
files in one step. (See the Amazon GameLift Developer Guide help on
packaging and uploading your build.)

To create a new build, identify the operating system of the game server
binaries. All game servers in a build must use the same operating
system. Optionally, specify a build name and version; this metadata is
stored with other properties in the build record and is displayed in
the GameLift console (it is not visible to players). If successful,
this action returns the newly created build record along with the
Amazon S3 storage location and AWS account credentials. Use the
location and credentials to upload your game build.


=head2 CreateFleet(BuildId => Str, EC2InstanceType => Str, Name => Str, [Description => Str, EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>], LogPaths => ArrayRef[Str|Undef], NewGameSessionProtectionPolicy => Str, ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>, RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>, ServerLaunchParameters => Str, ServerLaunchPath => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateFleet>

Returns: a L<Paws::GameLift::CreateFleetOutput> instance

  Creates a new fleet to run your game servers. A fleet is a set of
Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can
run multiple server processes to host game sessions. You configure a
fleet to create instances with certain hardware specifications (see
Amazon EC2 Instance Types for more information), and deploy a specified
game build to each instance. A newly created fleet passes through
several statuses; once it reaches the C<ACTIVE> status, it can begin
hosting game sessions.

To create a new fleet, provide a fleet name, an EC2 instance type, and
a build ID of the game build to deploy. You can also configure the new
fleet with the following settings: (1) a runtime configuration
describing what server processes to run on each instance in the fleet
(required to create fleet), (2) access permissions for inbound traffic,
(3) fleet-wide game session protection, and (4) the location of default
log files for GameLift to upload and store.

If the C<CreateFleet> call is successful, Amazon GameLift performs the
following tasks:

=over

=item *

Creates a fleet record and sets the status to C<NEW> (followed by other
statuses as the fleet is activated).

=item *

Sets the fleet's capacity to 1 "desired", which causes GameLift to
start one new EC2 instance.

=item *

Starts launching server processes on the instance. If the fleet is
configured to run multiple server processes per instance, GameLift
staggers each launch by a few seconds.

=item *

Begins writing events to the fleet event log, which can be accessed in
the GameLift console.

=item *

Sets the fleet's status to C<ACTIVE> once one server process in the
fleet is ready to host a game session.

=back

After a fleet is created, use the following actions to change fleet
properties and configuration:

=over

=item *

UpdateFleetAttributes -- Update fleet metadata, including name and
description.

=item *

UpdateFleetCapacity -- Increase or decrease the number of instances you
want the fleet to maintain.

=item *

UpdateFleetPortSettings -- Change the IP address and port ranges that
allow access to incoming traffic.

=item *

UpdateRuntimeConfiguration -- Change how server processes are launched
in the fleet, including launch path, launch parameters, and the number
of concurrent processes.

=back



=head2 CreateGameSession(MaximumPlayerSessionCount => Int, [AliasId => Str, CreatorId => Str, FleetId => Str, GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>], GameSessionId => Str, Name => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateGameSession>

Returns: a L<Paws::GameLift::CreateGameSessionOutput> instance

  Creates a multiplayer game session for players. This action creates a
game session record and assigns the new session to an instance in the
specified fleet, which initializes a new server process to host the
game session. A fleet must be in an C<ACTIVE> status before a game
session can be created in it.

To create a game session, specify either a fleet ID or an alias ID and
indicate the maximum number of players the game session allows. You can
also provide a name and a set of properties for your game (optional).
If successful, a GameSession object is returned containing session
properties, including an IP address. By default, newly created game
sessions are set to accept adding any new players to the game session.
Use UpdateGameSession to change the creation policy.


=head2 CreatePlayerSession(GameSessionId => Str, PlayerId => Str)

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSession>

Returns: a L<Paws::GameLift::CreatePlayerSessionOutput> instance

  Adds a player to a game session and creates a player session record. A
game session must be in an C<ACTIVE> status, have a creation policy of
C<ALLOW_ALL>, and have an open player slot before players can be added
to the session.

To create a player session, specify a game session ID and player ID. If
successful, the player is added to the game session and a new
PlayerSession object is returned.


=head2 CreatePlayerSessions(GameSessionId => Str, PlayerIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSessions>

Returns: a L<Paws::GameLift::CreatePlayerSessionsOutput> instance

  Adds a group of players to a game session. Similar to
CreatePlayerSession, this action allows you to add multiple players in
a single call, which is useful for games that provide party and/or
matchmaking features. A game session must be in an C<ACTIVE> status,
have a creation policy of C<ALLOW_ALL>, and have an open player slot
before players can be added to the session.

To create player sessions, specify a game session ID and a list of
player IDs. If successful, the players are added to the game session
and a set of new PlayerSession objects is returned.


=head2 DeleteAlias(AliasId => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteAlias>

Returns: nothing

  Deletes an alias. This action removes all record of the alias; game
clients attempting to access a server process using the deleted alias
receive an error. To delete an alias, specify the alias ID to be
deleted.


=head2 DeleteBuild(BuildId => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteBuild>

Returns: nothing

  Deletes a build. This action permanently deletes the build record and
any uploaded build files.

To delete a build, specify its ID. Deleting a build does not affect the
status of any active fleets using the build, but you can no longer
create new fleets with the deleted build.


=head2 DeleteFleet(FleetId => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteFleet>

Returns: nothing

  Deletes everything related to a fleet. Before deleting a fleet, you
must set the fleet's desired capacity to zero. See UpdateFleetCapacity.

This action removes the fleet's resources and the fleet record. Once a
fleet is deleted, you can no longer use that fleet.


=head2 DeleteScalingPolicy(FleetId => Str, Name => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteScalingPolicy>

Returns: nothing

  Deletes a fleet scaling policy. This action means that the policy is no
longer in force and removes all record of it. To delete a scaling
policy, specify both the scaling policy name and the fleet ID it is
associated with.


=head2 DescribeAlias(AliasId => Str)

Each argument is described in detail in: L<Paws::GameLift::DescribeAlias>

Returns: a L<Paws::GameLift::DescribeAliasOutput> instance

  Retrieves properties for a specified alias. To get the alias, specify
an alias ID. If successful, an Alias object is returned.


=head2 DescribeBuild(BuildId => Str)

Each argument is described in detail in: L<Paws::GameLift::DescribeBuild>

Returns: a L<Paws::GameLift::DescribeBuildOutput> instance

  Retrieves properties for a build. To get a build record, specify a
build ID. If successful, an object containing the build properties is
returned.


=head2 DescribeEC2InstanceLimits([EC2InstanceType => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeEC2InstanceLimits>

Returns: a L<Paws::GameLift::DescribeEC2InstanceLimitsOutput> instance

  Retrieves the following information for the specified EC2 instance
type:

=over

=item *

maximum number of instances allowed per AWS account (service limit)

=item *

current usage level for the AWS account

=back

Service limits vary depending on region. Available regions for GameLift
can be found in the AWS Management Console for GameLift (see the
drop-down list in the upper right corner).


=head2 DescribeFleetAttributes([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetAttributes>

Returns: a L<Paws::GameLift::DescribeFleetAttributesOutput> instance

  Retrieves fleet properties, including metadata, status, and
configuration, for one or more fleets. You can request attributes for
all fleets, or specify a list of one or more fleet IDs. When requesting
multiple fleets, use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a FleetAttributes object is
returned for each requested fleet ID. When specifying a list of fleet
IDs, attribute objects are returned only for fleets that currently
exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.


=head2 DescribeFleetCapacity([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetCapacity>

Returns: a L<Paws::GameLift::DescribeFleetCapacityOutput> instance

  Retrieves the current status of fleet capacity for one or more fleets.
This information includes the number of instances that have been
requested for the fleet and the number currently active. You can
request capacity for all fleets, or specify a list of one or more fleet
IDs. When requesting multiple fleets, use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
FleetCapacity object is returned for each requested fleet ID. When
specifying a list of fleet IDs, attribute objects are returned only for
fleets that currently exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.


=head2 DescribeFleetEvents(FleetId => Str, [EndTime => Str, Limit => Int, NextToken => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetEvents>

Returns: a L<Paws::GameLift::DescribeFleetEventsOutput> instance

  Retrieves entries from the specified fleet's event log. You can specify
a time range to limit the result set. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
collection of event log entries matching the request are returned.


=head2 DescribeFleetPortSettings(FleetId => Str)

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetPortSettings>

Returns: a L<Paws::GameLift::DescribeFleetPortSettingsOutput> instance

  Retrieves the inbound connection permissions for a fleet. Connection
permissions include a range of IP addresses and port settings that
incoming traffic can use to access server processes in the fleet. To
get a fleet's inbound connection permissions, specify a fleet ID. If
successful, a collection of IpPermission objects is returned for the
requested fleet ID. If the requested fleet has been deleted, the result
set is empty.


=head2 DescribeFleetUtilization([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetUtilization>

Returns: a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance

  Retrieves utilization statistics for one or more fleets. You can
request utilization data for all fleets, or specify a list of one or
more fleet IDs. When requesting multiple fleets, use the pagination
parameters to retrieve results as a set of sequential pages. If
successful, a FleetUtilization object is returned for each requested
fleet ID. When specifying a list of fleet IDs, utilization objects are
returned only for fleets that currently exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.


=head2 DescribeGameSessionDetails([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionDetails>

Returns: a L<Paws::GameLift::DescribeGameSessionDetailsOutput> instance

  Retrieves properties, including the protection policy in force, for one
or more game sessions. This action can be used in several ways: (1)
provide a C<GameSessionId> to request details for a specific game
session; (2) provide either a C<FleetId> or an C<AliasId> to request
properties for all game sessions running on a fleet.

To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSessionDetail object is
returned for each session matching the request.


=head2 DescribeGameSessions([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessions>

Returns: a L<Paws::GameLift::DescribeGameSessionsOutput> instance

  Retrieves a set of one or more game sessions and properties. This
action can be used in several ways: (1) provide a C<GameSessionId> to
request properties for a specific game session; (2) provide a
C<FleetId> or an C<AliasId> to request properties for all game sessions
running on a fleet. You can also use SearchGameSessions, which allows
you to retrieve all game sessions or filter on certain criteria, but
only returns game sessions with a status of ACTIVE. If you need to
retrieve the protection policy for each game session, use
DescribeGameSessionDetails.

To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSession object is
returned for each session matching the request.


=head2 DescribeInstances(FleetId => Str, [InstanceId => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeInstances>

Returns: a L<Paws::GameLift::DescribeInstancesOutput> instance

  Retrieves information about instances in a fleet.

To get information on a specific instance, specify both a fleet ID and
instance ID. To get information for all instances in a fleet, specify a
fleet ID only. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, an Instance object is returned
for each result.


=head2 DescribePlayerSessions([GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribePlayerSessions>

Returns: a L<Paws::GameLift::DescribePlayerSessionsOutput> instance

  Retrieves properties for one or more player sessions. This action can
be used in several ways: (1) provide a C<PlayerSessionId> parameter to
request properties for a specific player session; (2) provide a
C<GameSessionId> parameter to request properties for all player
sessions in the specified game session; (3) provide a C<PlayerId>
parameter to request properties for all player sessions of a specified
player.

To get game session record(s), specify only one of the following: a
player session ID, a game session ID, or a player ID. You can filter
this request by player session status. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
PlayerSession object is returned for each session matching the request.


=head2 DescribeRuntimeConfiguration(FleetId => Str)

Each argument is described in detail in: L<Paws::GameLift::DescribeRuntimeConfiguration>

Returns: a L<Paws::GameLift::DescribeRuntimeConfigurationOutput> instance

  Retrieves the current runtime configuration for the specified fleet.
The runtime configuration tells GameLift how to launch server processes
on instances in the fleet.


=head2 DescribeScalingPolicies(FleetId => Str, [Limit => Int, NextToken => Str, StatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeScalingPolicies>

Returns: a L<Paws::GameLift::DescribeScalingPoliciesOutput> instance

  Retrieves all scaling policies applied to a fleet.

To get a fleet's scaling policies, specify the fleet ID. You can filter
this request by policy status, such as to retrieve only active scaling
policies. Use the pagination parameters to retrieve results as a set of
sequential pages. If successful, set of ScalingPolicy objects is
returned for the fleet.


=head2 GetGameSessionLogUrl(GameSessionId => Str)

Each argument is described in detail in: L<Paws::GameLift::GetGameSessionLogUrl>

Returns: a L<Paws::GameLift::GetGameSessionLogUrlOutput> instance

  Retrieves the location of stored game session logs for a specified game
session. When a game session is terminated, Amazon GameLift
automatically stores the logs in Amazon S3. Use this URL to download
the logs.

See the AWS Service Limits page for maximum log file sizes. Log files
that exceed this limit are not saved.


=head2 ListAliases([Limit => Int, Name => Str, NextToken => Str, RoutingStrategyType => Str])

Each argument is described in detail in: L<Paws::GameLift::ListAliases>

Returns: a L<Paws::GameLift::ListAliasesOutput> instance

  Retrieves a collection of alias records for this AWS account. You can
filter the result set by alias name and/or routing strategy type. Use
the pagination parameters to retrieve results in sequential pages.

Aliases are not listed in any particular order.


=head2 ListBuilds([Limit => Int, NextToken => Str, Status => Str])

Each argument is described in detail in: L<Paws::GameLift::ListBuilds>

Returns: a L<Paws::GameLift::ListBuildsOutput> instance

  Retrieves build records for all builds associated with the AWS account
in use. You can limit results to builds that are in a specific status
by using the C<Status> parameter. Use the pagination parameters to
retrieve results in a set of sequential pages.

Build records are not listed in any particular order.


=head2 ListFleets([BuildId => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::ListFleets>

Returns: a L<Paws::GameLift::ListFleetsOutput> instance

  Retrieves a collection of fleet records for this AWS account. You can
filter the result set by build ID. Use the pagination parameters to
retrieve results in sequential pages.

Fleet records are not listed in any particular order.


=head2 PutScalingPolicy(ComparisonOperator => Str, EvaluationPeriods => Int, FleetId => Str, MetricName => Str, Name => Str, ScalingAdjustment => Int, ScalingAdjustmentType => Str, Threshold => Num)

Each argument is described in detail in: L<Paws::GameLift::PutScalingPolicy>

Returns: a L<Paws::GameLift::PutScalingPolicyOutput> instance

  Creates or updates a scaling policy for a fleet. An active scaling
policy prompts Amazon GameLift to track a certain metric for a fleet
and automatically change the fleet's capacity in specific
circumstances. Each scaling policy contains one rule statement. Fleets
can have multiple scaling policies in force simultaneously.

A scaling policy rule statement has the following structure:

If C<[MetricName]> is C<[ComparisonOperator]> C<[Threshold]> for
C<[EvaluationPeriods]> minutes, then C<[ScalingAdjustmentType]> to/by
C<[ScalingAdjustment]>.

For example, this policy: "If the number of idle instances exceeds 20
for more than 15 minutes, then reduce the fleet capacity by 10
instances" could be implemented as the following rule statement:

If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15]
minutes, then [ChangeInCapacity] by [-10].

To create or update a scaling policy, specify a unique combination of
name and fleet ID, and set the rule values. All parameters for this
action are required. If successful, the policy name is returned.
Scaling policies cannot be suspended or made inactive. To stop
enforcing a scaling policy, call DeleteScalingPolicy.


=head2 RequestUploadCredentials(BuildId => Str)

Each argument is described in detail in: L<Paws::GameLift::RequestUploadCredentials>

Returns: a L<Paws::GameLift::RequestUploadCredentialsOutput> instance

  Retrieves a fresh set of upload credentials and the assigned Amazon S3
storage location for a specific build. Valid credentials are required
to upload your game build files to Amazon S3.

Call this action only if you need credentials for a build created with
C< CreateBuild >. This is a rare situation; in most cases, builds are
created using the CLI command C<upload-build>, which creates a build
record and also uploads build files.

Upload credentials are returned when you create the build, but they
have a limited lifespan. You can get fresh credentials and use them to
re-upload game files until the status of that build changes to
C<READY>. Once this happens, you must create a brand new build.


=head2 ResolveAlias(AliasId => Str)

Each argument is described in detail in: L<Paws::GameLift::ResolveAlias>

Returns: a L<Paws::GameLift::ResolveAliasOutput> instance

  Retrieves the fleet ID that a specified alias is currently pointing to.


=head2 SearchGameSessions([AliasId => Str, FilterExpression => Str, FleetId => Str, Limit => Int, NextToken => Str, SortExpression => Str])

Each argument is described in detail in: L<Paws::GameLift::SearchGameSessions>

Returns: a L<Paws::GameLift::SearchGameSessionsOutput> instance

  Retrieves a set of game sessions that match a set of search criteria
and sorts them in a specified order. Currently a game session search is
limited to a single fleet. Search results include only game sessions
that are in ACTIVE status. If you need to retrieve game sessions with a
status other than active, use DescribeGameSessions. If you need to
retrieve the protection policy for each game session, use
DescribeGameSessionDetails.

You can search or sort by the following game session attributes:

=over

=item *

B<gameSessionId> -- ID value assigned to a game session. This unique
value is returned in a GameSession object when a new game session is
created.

=item *

B<gameSessionName> -- Name assigned to a game session. This value is
set when requesting a new game session with CreateGameSession or
updating with UpdateGameSession. Game session names do not need to be
unique to a game session.

=item *

B<creationTimeMillis> -- Value indicating when a game session was
created. It is expressed in Unix time as milliseconds.

=item *

B<playerSessionCount> -- Number of players currently connected to a
game session. This value changes rapidly as players join the session or
drop out.

=item *

B<maximumSessions> -- Maximum number of player sessions allowed for a
game session. This value is set when requesting a new game session with
CreateGameSession or updating with UpdateGameSession.

=item *

B<hasAvailablePlayerSessions> -- Boolean value indicating whether or
not a game session has reached its maximum number of players. When
searching with this attribute, the search value must be C<true> or
C<false>. It is highly recommended that all search requests include
this filter attribute to optimize search performance and return only
sessions that players can join.

=back

To search or sort, specify either a fleet ID or an alias ID, and
provide a search filter expression, a sort expression, or both. Use the
pagination parameters to retrieve results as a set of sequential pages.
If successful, a collection of GameSession objects matching the request
is returned.

Returned values for C<playerSessionCount> and
C<hasAvailablePlayerSessions> change quickly as players join sessions
and others drop out. Results should be considered a snapshot in time.
Be sure to refresh search results often, and handle sessions that fill
up before a player can join.


=head2 UpdateAlias(AliasId => Str, [Description => Str, Name => Str, RoutingStrategy => L<Paws::GameLift::RoutingStrategy>])

Each argument is described in detail in: L<Paws::GameLift::UpdateAlias>

Returns: a L<Paws::GameLift::UpdateAliasOutput> instance

  Updates properties for an alias. To update properties, specify the
alias ID to be updated and provide the information to be changed. To
reassign an alias to another fleet, provide an updated routing
strategy. If successful, the updated alias record is returned.


=head2 UpdateBuild(BuildId => Str, [Name => Str, Version => Str])

Each argument is described in detail in: L<Paws::GameLift::UpdateBuild>

Returns: a L<Paws::GameLift::UpdateBuildOutput> instance

  Updates metadata in a build record, including the build name and
version. To update the metadata, specify the build ID to update and
provide the new values. If successful, a build object containing the
updated metadata is returned.


=head2 UpdateFleetAttributes(FleetId => Str, [Description => Str, Name => Str, NewGameSessionProtectionPolicy => Str, ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>])

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetAttributes>

Returns: a L<Paws::GameLift::UpdateFleetAttributesOutput> instance

  Updates fleet properties, including name and description, for a fleet.
To update metadata, specify the fleet ID and the property values you
want to change. If successful, the fleet ID for the updated fleet is
returned.


=head2 UpdateFleetCapacity(FleetId => Str, [DesiredInstances => Int, MaxSize => Int, MinSize => Int])

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetCapacity>

Returns: a L<Paws::GameLift::UpdateFleetCapacityOutput> instance

  Updates capacity settings for a fleet. Use this action to specify the
number of EC2 instances (hosts) that you want this fleet to contain.
Before calling this action, you may want to call
DescribeEC2InstanceLimits to get the maximum capacity based on the
fleet's EC2 instance type.

If you're using autoscaling (see PutScalingPolicy), you may want to
specify a minimum and/or maximum capacity. If you don't provide these,
autoscaling can set capacity anywhere between zero and the service
limits.

To update fleet capacity, specify the fleet ID and the number of
instances you want the fleet to host. If successful, Amazon GameLift
starts or terminates instances so that the fleet's active instance
count matches the desired instance count. You can view a fleet's
current capacity information by calling DescribeFleetCapacity. If the
desired instance count is higher than the instance type's limit, the
"Limit Exceeded" exception occurs.


=head2 UpdateFleetPortSettings(FleetId => Str, [InboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>], InboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]])

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetPortSettings>

Returns: a L<Paws::GameLift::UpdateFleetPortSettingsOutput> instance

  Updates port settings for a fleet. To update settings, specify the
fleet ID to be updated and list the permissions you want to update.
List the permissions you want to add in
C<InboundPermissionAuthorizations>, and permissions you want to remove
in C<InboundPermissionRevocations>. Permissions to be removed must
match existing fleet permissions. If successful, the fleet ID for the
updated fleet is returned.


=head2 UpdateGameSession(GameSessionId => Str, [MaximumPlayerSessionCount => Int, Name => Str, PlayerSessionCreationPolicy => Str, ProtectionPolicy => Str])

Each argument is described in detail in: L<Paws::GameLift::UpdateGameSession>

Returns: a L<Paws::GameLift::UpdateGameSessionOutput> instance

  Updates game session properties. This includes the session name,
maximum player count, protection policy, which controls whether or not
an active game session can be terminated during a scale-down event, and
the player session creation policy, which controls whether or not new
players can join the session. To update a game session, specify the
game session ID and the values you want to change. If successful, an
updated GameSession object is returned.


=head2 UpdateRuntimeConfiguration(FleetId => Str, RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>)

Each argument is described in detail in: L<Paws::GameLift::UpdateRuntimeConfiguration>

Returns: a L<Paws::GameLift::UpdateRuntimeConfigurationOutput> instance

  Updates the current runtime configuration for the specified fleet,
which tells GameLift how to launch server processes on instances in the
fleet. You can update a fleet's runtime configuration at any time after
the fleet is created; it does not need to be in an C<ACTIVE> status.

To update runtime configuration, specify the fleet ID and provide a
C<RuntimeConfiguration> object with the updated collection of server
process configurations.

Each instance in a GameLift fleet checks regularly for an updated
runtime configuration and changes how it launches server processes to
comply with the latest version. Existing server processes are not
affected by the update; they continue to run until they end, while
GameLift simply adds new server processes to fit the current runtime
configuration. As a result, the runtime configuration changes are
applied gradually as existing processes shut down and new processes are
launched in GameLift's normal process recycling activity.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

