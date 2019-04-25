package Paws::GameLift::GameSession;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has CurrentPlayerSessionCount => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has MatchmakerData => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PlayerSessionCreationPolicy => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has TerminationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSession object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSession object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties describing a game session.

A game session in ACTIVE status can host players. When a game session
ends, its status is set to C<TERMINATED>.

Once the session ends, the game session object is retained for 30 days.
This means you can reuse idempotency token values after this time. Game
session logs are retained for 14 days.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back


=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 CreatorId => Str

  Unique identifier for a player. This ID is used to enforce a resource
protection policy (if one exists), that limits the number of game
sessions a player can create.


=head2 CurrentPlayerSessionCount => Int

  Number of players currently in the game session.


=head2 FleetId => Str

  Unique identifier for a fleet that the game session is running on.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  Set of custom properties for a game session, formatted as key:value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
You can search for active game sessions based on this custom data with
SearchGameSessions.


=head2 GameSessionData => Str

  Set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).


=head2 GameSessionId => Str

  Unique identifier for the game session. A game session ARN has the
following format:
C<arn:aws:gamelift:E<lt>regionE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>.


=head2 IpAddress => Str

  IP address of the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number.


=head2 MatchmakerData => Str

  Information about the matchmaking process that was used to create the
game session. It is in JSON syntax, formatted as a string. In addition
the matchmaking configuration used, it contains data on all players
assigned to the match, including player attributes and team
assignments. For more details on matchmaker data, see Match Data
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data).
Matchmaker data is useful when requesting match backfills, and is
updated whenever new players are added during a successful backfill
(see StartMatchBackfill).


=head2 MaximumPlayerSessionCount => Int

  Maximum number of players that can be connected simultaneously to the
game session.


=head2 Name => Str

  Descriptive label that is associated with a game session. Session names
do not need to be unique.


=head2 PlayerSessionCreationPolicy => Str

  Indicates whether or not the game session is accepting new players.


=head2 Port => Int

  Port number for the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number.


=head2 Status => Str

  Current status of the game session. A game session must have an
C<ACTIVE> status to have player sessions.


=head2 StatusReason => Str

  Provides additional information about game session status.
C<INTERRUPTED> indicates that the game session was hosted on a spot
instance that was reclaimed, causing the active game session to be
terminated.


=head2 TerminationTime => Str

  Time stamp indicating when this data object was terminated. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

