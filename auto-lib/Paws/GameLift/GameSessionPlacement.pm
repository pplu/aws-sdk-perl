package Paws::GameLift::GameSessionPlacement;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionArn => (is => 'ro', isa => 'Str');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has GameSessionName => (is => 'ro', isa => 'Str');
  has GameSessionQueueName => (is => 'ro', isa => 'Str');
  has GameSessionRegion => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has MatchmakerData => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has PlacedPlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlacedPlayerSession]');
  has PlacementId => (is => 'ro', isa => 'Str');
  has PlayerLatencies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatency]');
  has Port => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionPlacement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionPlacement object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionPlacement object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Object that describes a StartGameSessionPlacement request. This object
includes the full details of the original request plus the current
status and start/end time stamps.

Game session placement-related operations include:

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back


=head1 ATTRIBUTES


=head2 EndTime => Str

  Time stamp indicating when this request was completed, canceled, or
timed out.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  Set of custom properties for a game session, formatted as key:value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).


=head2 GameSessionArn => Str

  Identifier for the game session created by this placement request. This
value is set once the new game session is placed (placement status is
C<FULFILLED>). This identifier is unique across all regions. You can
use this value as a C<GameSessionId> value as needed.


=head2 GameSessionData => Str

  Set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).


=head2 GameSessionId => Str

  Unique identifier for the game session. This value is set once the new
game session is placed (placement status is C<FULFILLED>).


=head2 GameSessionName => Str

  Descriptive label that is associated with a game session. Session names
do not need to be unique.


=head2 GameSessionQueueName => Str

  Descriptive label that is associated with game session queue. Queue
names must be unique within each region.


=head2 GameSessionRegion => Str

  Name of the region where the game session created by this placement
request is running. This value is set once the new game session is
placed (placement status is C<FULFILLED>).


=head2 IpAddress => Str

  IP address of the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number. This value is
set once the new game session is placed (placement status is
C<FULFILLED>).


=head2 MatchmakerData => Str

  Information on the matchmaking process for this game. Data is in JSON
syntax, formatted as a string. It identifies the matchmaking
configuration used to create the match, and contains data on all
players assigned to the match, including player attributes and team
assignments. For more details on matchmaker data, see Match Data
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data).


=head2 MaximumPlayerSessionCount => Int

  Maximum number of players that can be connected simultaneously to the
game session.


=head2 PlacedPlayerSessions => ArrayRef[L<Paws::GameLift::PlacedPlayerSession>]

  Collection of information on player sessions created in response to the
game session placement request. These player sessions are created only
once a new game session is successfully placed (placement status is
C<FULFILLED>). This information includes the player ID (as provided in
the placement request) and the corresponding player session ID.
Retrieve full player sessions by calling DescribePlayerSessions with
the player session ID.


=head2 PlacementId => Str

  Unique identifier for a game session placement.


=head2 PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]

  Set of values, expressed in milliseconds, indicating the amount of
latency that a player experiences when connected to AWS regions.


=head2 Port => Int

  Port number for the game session. To connect to a Amazon GameLift game
server, an app needs both the IP address and port number. This value is
set once the new game session is placed (placement status is
C<FULFILLED>).


=head2 StartTime => Str

  Time stamp indicating when this request was placed in the queue. Format
is a number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Status => Str

  Current status of the game session placement request.

=over

=item *

B<PENDING> -- The placement request is currently in the queue waiting
to be processed.

=item *

B<FULFILLED> -- A new game session and player sessions (if requested)
have been successfully created. Values for I<GameSessionArn> and
I<GameSessionRegion> are available.

=item *

B<CANCELLED> -- The placement request was canceled with a call to
StopGameSessionPlacement.

=item *

B<TIMED_OUT> -- A new game session was not successfully created before
the time limit expired. You can resubmit the placement request as
needed.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

