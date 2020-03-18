package Paws::GameLift::MatchmakingConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has AcceptanceTimeoutSeconds => (is => 'ro', isa => 'Int');
  has AdditionalPlayerCount => (is => 'ro', isa => 'Int');
  has BackfillMode => (is => 'ro', isa => 'Str');
  has ConfigurationArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CustomEventData => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionQueueArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NotificationTarget => (is => 'ro', isa => 'Str');
  has RequestTimeoutSeconds => (is => 'ro', isa => 'Int');
  has RuleSetArn => (is => 'ro', isa => 'Str');
  has RuleSetName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::MatchmakingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::MatchmakingConfiguration object:

  $service_obj->Method(Att1 => { AcceptanceRequired => $value, ..., RuleSetName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::MatchmakingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptanceRequired

=head1 DESCRIPTION

Guidelines for use with FlexMatch to match players into games. All
matchmaking requests must specify a matchmaking configuration.

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

  A flag that indicates whether a match that was created with this
configuration must be accepted by the matched players. To require
acceptance, set to TRUE.


=head2 AcceptanceTimeoutSeconds => Int

  The length of time (in seconds) to wait for players to accept a
proposed match. If any player rejects the match or fails to accept
before the timeout, the ticket continues to look for an acceptable
match.


=head2 AdditionalPlayerCount => Int

  The number of player slots in a match to keep open for future players.
For example, assume that the configuration's rule set specifies a match
for a single 12-person team. If the additional player count is set to
2, only 10 players are initially selected for the match.


=head2 BackfillMode => Str

  The method used to backfill game sessions created with this matchmaking
configuration. MANUAL indicates that the game makes backfill requests
or does not use the match backfill feature. AUTOMATIC indicates that
GameLift creates StartMatchBackfill requests whenever a game session
has one or more open slots. Learn more about manual and automatic
backfill in Backfill Existing Games with FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html).


=head2 ConfigurationArn => Str

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html))
that is assigned to a GameLift matchmaking configuration resource and
uniquely identifies it. ARNs are unique across all Regions. In a
GameLift configuration ARN, the resource ID matches the I<Name> value.


=head2 CreationTime => Str

  The time stamp indicating when this data object was created. The format
is a number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 CustomEventData => Str

  Information to attach to all events related to the matchmaking
configuration.


=head2 Description => Str

  A descriptive label that is associated with matchmaking configuration.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  A set of custom properties for a game session, formatted as key-value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match.


=head2 GameSessionData => Str

  A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match.


=head2 GameSessionQueueArns => ArrayRef[Str|Undef]

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html))
that is assigned to a GameLift game session queue resource and uniquely
identifies it. ARNs are unique across all Regions. GameLift uses the
listed queues when placing game sessions for matches that are created
with this matchmaking configuration. Queues can be located in any
Region.


=head2 Name => Str

  A unique identifier for a matchmaking configuration. This name is used
to identify the configuration associated with a matchmaking request or
ticket.


=head2 NotificationTarget => Str

  An SNS topic ARN that is set up to receive matchmaking notifications.


=head2 RequestTimeoutSeconds => Int

  The maximum duration, in seconds, that a matchmaking ticket can remain
in process before timing out. Requests that fail due to timing out can
be resubmitted as needed.


=head2 RuleSetArn => Str

  The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html))
associated with the GameLift matchmaking rule set resource that this
configuration uses.


=head2 RuleSetName => Str

  A unique identifier for a matchmaking rule set to use with this
configuration. A matchmaking configuration can only use rule sets that
are defined in the same Region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

