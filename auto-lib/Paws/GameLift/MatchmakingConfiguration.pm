package Paws::GameLift::MatchmakingConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has AcceptanceTimeoutSeconds => (is => 'ro', isa => 'Int');
  has AdditionalPlayerCount => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CustomEventData => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionQueueArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NotificationTarget => (is => 'ro', isa => 'Str');
  has RequestTimeoutSeconds => (is => 'ro', isa => 'Int');
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

  Flag that determines whether or not a match that was created with this
configuration must be accepted by the matched players. To require
acceptance, set to TRUE.


=head2 AcceptanceTimeoutSeconds => Int

  Length of time (in seconds) to wait for players to accept a proposed
match. If any player rejects the match or fails to accept before the
timeout, the ticket continues to look for an acceptable match.


=head2 AdditionalPlayerCount => Int

  Number of player slots in a match to keep open for future players. For
example, if the configuration's rule set specifies a match for a single
12-person team, and the additional player count is set to 2, only 10
players are selected for the match.


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 CustomEventData => Str

  Information to attached to all events related to the matchmaking
configuration.


=head2 Description => Str

  Descriptive label that is associated with matchmaking configuration.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

  Set of custom properties for a game session, formatted as key:value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match.


=head2 GameSessionData => Str

  Set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match.


=head2 GameSessionQueueArns => ArrayRef[Str|Undef]

  Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a game session queue and uniquely identifies it.
Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.
These queues are used when placing game sessions for matches that are
created with this matchmaking configuration. Queues can be located in
any region.


=head2 Name => Str

  Unique identifier for a matchmaking configuration. This name is used to
identify the configuration associated with a matchmaking request or
ticket.


=head2 NotificationTarget => Str

  SNS topic ARN that is set up to receive matchmaking notifications.


=head2 RequestTimeoutSeconds => Int

  Maximum duration, in seconds, that a matchmaking ticket can remain in
process before timing out. Requests that time out can be resubmitted as
needed.


=head2 RuleSetName => Str

  Unique identifier for a matchmaking rule set to use with this
configuration. A matchmaking configuration can only use rule sets that
are defined in the same region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

