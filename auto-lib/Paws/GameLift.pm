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
  sub DescribePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribePlayerSessions', @_);
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
  


  sub operations { qw/CreateAlias CreateBuild CreateFleet CreateGameSession CreatePlayerSession CreatePlayerSessions DeleteAlias DeleteBuild DeleteFleet DeleteScalingPolicy DescribeAlias DescribeBuild DescribeEC2InstanceLimits DescribeFleetAttributes DescribeFleetCapacity DescribeFleetEvents DescribeFleetPortSettings DescribeFleetUtilization DescribeGameSessionDetails DescribeGameSessions DescribePlayerSessions DescribeScalingPolicies GetGameSessionLogUrl ListAliases ListBuilds ListFleets PutScalingPolicy RequestUploadCredentials ResolveAlias UpdateAlias UpdateBuild UpdateFleetAttributes UpdateFleetCapacity UpdateFleetPortSettings UpdateGameSession / }

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
infrastructure scaling and session management. For more information
about the GameLift service, including a feature overview, getting
started guide, and tutorial, see the accompanying Amazon GameLift
Developer Guide.

This reference describes the low-level service API for GameLift. You
can call this API directly or use the AWS SDK for your preferred
language. The AWS SDK includes a set of high-level GameLift actions
multiplayer game sessions. Alternatively, you can use the AWS
command-line interface (CLI) tool, which includes commands for
GameLift. For administrative actions, you can use the Amazon GameLift
console.

B<Managing Game and Player Sessions Through GameLift>

Call these actions from your game clients and/or services to create and
manage multiplayer game sessions.

=over

=item * B<Game sessions>

=over

=item * CreateGameSession

=item * DescribeGameSessions

=item * DescribeGameSessionDetails

=item * UpdateGameSession

=back

=item * B<Player sessions>

=over

=item * CreatePlayerSession

=item * CreatePlayerSessions

=item * DescribePlayerSessions

=back

=item * B<Other actions:>

=over

=item * GetGameSessionLogUrl

=back

=back

B<Setting Up Game Servers>

Use these administrative actions to configure GameLift to host your
game servers. When configuring GameLift, you'll need to (1) configure a
build for your game and provide build files, and (2) set up one or more
fleets to host game sessions.

=over

=item * B<Build actions:>

=over

=item * ListBuilds

=item * CreateBuild

=item * DescribeBuild

=item * UpdateBuild

=item * DeleteBuild

=item * RequestUploadCredentials

=back

=item * B<Fleet actions:>

=over

=item * ListFleets

=item * CreateFleet

=item * Describe fleet actions:

=over

=item * DescribeFleetAttributes

=item * DescribeFleetCapacity

=item * DescribeFleetPortSettings

=item * DescribeFleetUtilization

=item * DescribeEC2InstanceLimits

=item * DescribeFleetEvents

=back

=item * Update fleet actions:

=over

=item * UpdateFleetAttributes

=item * UpdateFleetCapacity

=item * UpdateFleetPortSettings

=back

=item * DeleteFleet

=back

=item * B<Alias actions:>

=over

=item * ListAliases

=item * CreateAlias

=item * DescribeAlias

=item * UpdateAlias

=item * DeleteAlias

=item * ResolveAlias

=back

=item * B<Scaling policy actions:>

=over

=item * PutScalingPolicy

=item * DescribeScalingPolicies

=item * DeleteScalingPolicy

=back

=back


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


=head2 CreateBuild([Name => Str, StorageLocation => L<Paws::GameLift::S3Location>, Version => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateBuild>

Returns: a L<Paws::GameLift::CreateBuildOutput> instance

  Initializes a new build record and generates information required to
upload a game build to Amazon GameLift. Once the build record has been
created and is in an INITIALIZED state, you can upload your game build.

To create a build, use the CLI command C<upload-build>, which creates a
new build record and uploads the build files in one step. (See the
Amazon GameLift Developer Guide for more details on the CLI and the
upload process.) Call the C<CreateBuild> action only if you have your
own Amazon Simple Storage Service (Amazon S3) client and need to
manually upload your build files.

To create a new build, optionally specify a build name and version.
This metadata is stored with other properties in the build record and
is displayed in the GameLift console (but not visible to players). If
successful, this action returns the newly created build record along
with an Amazon S3 storage location and AWS account credentials. Use the
location and credentials to upload your game build.


=head2 CreateFleet(BuildId => Str, EC2InstanceType => Str, Name => Str, ServerLaunchPath => Str, [Description => Str, EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>], LogPaths => ArrayRef[Str], NewGameSessionProtectionPolicy => Str, ServerLaunchParameters => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateFleet>

Returns: a L<Paws::GameLift::CreateFleetOutput> instance

  Creates a new fleet to host game servers. A fleet consists of a set of
Amazon Elastic Compute Cloud (Amazon EC2) instances of a certain type,
which defines the CPU, memory, storage, and networking capacity of each
host in the fleet. See Amazon EC2 Instance Types for more information.
Each instance in the fleet hosts a game server created from the
specified game build. Once a fleet is in an ACTIVE state, it can begin
hosting game sessions.

To create a new fleet, provide a name and the EC2 instance type for the
new fleet, and specify the build and server launch path. Builds must be
in a READY state before they can be used to build fleets. When
configuring the new fleet, you can optionally (1) provide a set of
launch parameters to be passed to a game server when activated; (2)
limit incoming traffic to a specified range of IP addresses and port
numbers; (3) set game session protection for all instances in the
fleet, and (4) configure Amazon GameLift to store game session logs by
specifying the path to the logs stored in your game server files. If
the call is successful, Amazon GameLift performs the following tasks:

=over

=item * Creates a fleet record and sets the state to NEW.

=item * Sets the fleet's capacity to 1 "desired" and 1 "active" EC2
instance count.

=item * Creates an EC2 instance and begins the process of initializing
the fleet and activating a game server on the instance.

=item * Begins writing events to the fleet event log, which can be
accessed in the GameLift console.

=back

Once a fleet is created, use the following actions to change certain
fleet properties (server launch parameters and log paths cannot be
changed):

=over

=item * UpdateFleetAttributes -- Update fleet metadata, including name
and description.

=item * UpdateFleetCapacity -- Increase or decrease the number of
instances you want the fleet to maintain.

=item * UpdateFleetPortSettings -- Change the IP addresses and ports
that allow access to incoming traffic.

=back



=head2 CreateGameSession(MaximumPlayerSessionCount => Int, [AliasId => Str, FleetId => Str, GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>], Name => Str])

Each argument is described in detail in: L<Paws::GameLift::CreateGameSession>

Returns: a L<Paws::GameLift::CreateGameSessionOutput> instance

  Creates a multiplayer game session for players. This action creates a
game session record and assigns the new session to an instance in the
specified fleet, which activates the server initialization process in
your game server. A fleet must be in an ACTIVE state before a game
session can be created for it.

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
game session must be in an ACTIVE state, have a creation policy of
ALLOW_ALL, and have an open player slot before players can be added to
the session.

To create a player session, specify a game session ID and player ID. If
successful, the player is added to the game session and a new
PlayerSession object is returned.


=head2 CreatePlayerSessions(GameSessionId => Str, PlayerIds => ArrayRef[Str])

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSessions>

Returns: a L<Paws::GameLift::CreatePlayerSessionsOutput> instance

  Adds a group of players to a game session. Similar to
CreatePlayerSession, this action allows you to add multiple players in
a single call, which is useful for games that provide party and/or
matchmaking features. A game session must be in an ACTIVE state, have a
creation policy of ALLOW_ALL, and have an open player slot before
players can be added to the session.

To create player sessions, specify a game session ID and a list of
player IDs. If successful, the players are added to the game session
and a set of new PlayerSession objects is returned.


=head2 DeleteAlias(AliasId => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteAlias>

Returns: nothing

  Deletes an alias. This action removes all record of the alias; game
clients attempting to access a game server using the deleted alias
receive an error. To delete an alias, specify the alias ID to be
deleted.


=head2 DeleteBuild(BuildId => Str)

Each argument is described in detail in: L<Paws::GameLift::DeleteBuild>

Returns: nothing

  Deletes a build. This action permanently deletes the build record and
any uploaded build files.

To delete a build, specify its ID. Deleting a build does not affect the
status of any active fleets, but you can no longer create new fleets
for the deleted build.


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

=item * maximum number of instances allowed per AWS account (service
limit)

=item * current usage level for the AWS account

=back

Service limits vary depending on region. Available regions for GameLift
can be found in the AWS Management Console for GameLift (see the
drop-down list in the upper right corner).


=head2 DescribeFleetAttributes([FleetIds => ArrayRef[Str], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetAttributes>

Returns: a L<Paws::GameLift::DescribeFleetAttributesOutput> instance

  Retrieves fleet properties, including metadata, status, and
configuration, for one or more fleets. You can request attributes for
all fleets, or specify a list of one or more fleet IDs. When requesting
all fleets, use the pagination parameters to retrieve results as a set
of sequential pages. If successful, a FleetAttributes object is
returned for each requested fleet ID. When specifying a list of fleet
IDs, attribute objects are returned only for fleets that currently
exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.


=head2 DescribeFleetCapacity([FleetIds => ArrayRef[Str], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetCapacity>

Returns: a L<Paws::GameLift::DescribeFleetCapacityOutput> instance

  Retrieves the current status of fleet capacity for one or more fleets.
This information includes the number of instances that have been
requested for the fleet and the number currently active. You can
request capacity for all fleets, or specify a list of one or more fleet
IDs. When requesting all fleets, use the pagination parameters to
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

  Retrieves entries from the fleet event log. You can specify a time
range to limit the result set. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
collection of event log entries matching the request are returned.


=head2 DescribeFleetPortSettings(FleetId => Str)

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetPortSettings>

Returns: a L<Paws::GameLift::DescribeFleetPortSettingsOutput> instance

  Retrieves the port settings for a fleet. Port settings are used to
limit incoming traffic access to game servers in the fleet. To get a
fleet's port settings, specify a fleet ID. If successful, an
IpPermission object is returned for the requested fleet ID. If the
requested fleet has been deleted, the result set will be empty.


=head2 DescribeFleetUtilization([FleetIds => ArrayRef[Str], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetUtilization>

Returns: a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance

  Retrieves utilization statistics for one or more fleets. You can
request utilization data for all fleets, or specify a list of one or
more fleet IDs. When requesting all fleets, use the pagination
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
provide a I<GameSessionId> to request details for a specific game
session; (2) provide either a I<FleetId> or an I<AliasId> to request
properties for all game sessions running on a fleet.

To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSessionDetail object is
returned for each session matching the request.


=head2 DescribeGameSessions([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessions>

Returns: a L<Paws::GameLift::DescribeGameSessionsOutput> instance

  Retrieves properties for one or more game sessions. This action can be
used in several ways: (1) provide a I<GameSessionId> to request
properties for a specific game session; (2) provide a I<FleetId> or an
I<AliasId> to request properties for all game sessions running on a
fleet.

To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSession object is
returned for each session matching the request.


=head2 DescribePlayerSessions([GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])

Each argument is described in detail in: L<Paws::GameLift::DescribePlayerSessions>

Returns: a L<Paws::GameLift::DescribePlayerSessionsOutput> instance

  Retrieves properties for one or more player sessions. This action can
be used in several ways: (1) provide a I<PlayerSessionId> parameter to
request properties for a specific player session; (2) provide a
I<GameSessionId> parameter to request properties for all player
sessions in the specified game session; (3) provide a I<PlayerId>
parameter to request properties for all player sessions of a specified
player.

To get game session record(s), specify only one of the following: a
player session ID, a game session ID, or a player ID. You can filter
this request by player session status. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
PlayerSession object is returned for each session matching the request.


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

  Retrieves build records for all builds associated with an AWS account.
You can filter the result set by build status. Use the pagination
parameters to retrieve results in a set of sequential pages.

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
policy prompts GameLift to track a certain metric for a fleet and
automatically change the fleet's capacity in specific circumstances.
Each scaling policy contains one rule statement. Fleets can have
multiple scaling policies in force simultaneously.

A scaling policy rule statement has the following structure:

If I<[MetricName]> is I<[ComparisonOperator]> I<[Threshold]> for
I<[EvaluationPeriods]> minutes, then I<[ScalingAdjustmentType]> to/by
I<[ScalingAdjustment]>.

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
CreateBuild. This is a rare situation; in most cases, builds are
created using the CLI command C<upload-build>, which creates a build
record and also uploads build files.

Upload credentials are returned when you create the build, but they
have a limited lifespan. You can get fresh credentials and use them to
re-upload game files until the state of that build changes to READY.
Once this happens, you must create a brand new build.


=head2 ResolveAlias(AliasId => Str)

Each argument is described in detail in: L<Paws::GameLift::ResolveAlias>

Returns: a L<Paws::GameLift::ResolveAliasOutput> instance

  Retrieves the fleet ID that a specified alias is currently pointing to.


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


=head2 UpdateFleetAttributes(FleetId => Str, [Description => Str, Name => Str, NewGameSessionProtectionPolicy => Str])

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
number of EC2 instances (hosts) you want this fleet to contain. Before
calling this action, you may want to call DescribeEC2InstanceLimits to
get the maximum capacity based on the fleet's EC2 instance type.

If you're using auto-scaling (see PutScalingPolicy), you may want to
specify a minimum and/or maximum capacity. If you don't provide these
boundaries, auto-scaling can set capacity anywhere between zero and the
service limits.

To update fleet capacity, specify the fleet ID and the desired number
of instances. If successful, Amazon GameLift starts or terminates
instances so that the fleet's active instance count matches the desired
instance count. You can view a fleet's current capacity information by
calling DescribeFleetCapacity. If the desired instance count is higher
than the instance type's limit, the "Limit Exceeded" exception will
occur.


=head2 UpdateFleetPortSettings(FleetId => Str, [InboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>], InboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]])

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetPortSettings>

Returns: a L<Paws::GameLift::UpdateFleetPortSettingsOutput> instance

  Updates port settings for a fleet. To update settings, specify the
fleet ID to be updated and list the permissions you want to update.
List the permissions you want to add in
I<InboundPermissionAuthorizations>, and permissions you want to remove
in I<InboundPermissionRevocations>. Permissions to be removed must
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


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

