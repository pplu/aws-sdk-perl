
package Paws::GameLift::UpdateMatchmakingConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has AcceptanceTimeoutSeconds => (is => 'ro', isa => 'Int');
  has AdditionalPlayerCount => (is => 'ro', isa => 'Int');
  has BackfillMode => (is => 'ro', isa => 'Str');
  has CustomEventData => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FlexMatchMode => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionQueueArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTarget => (is => 'ro', isa => 'Str');
  has RequestTimeoutSeconds => (is => 'ro', isa => 'Int');
  has RuleSetName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMatchmakingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateMatchmakingConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateMatchmakingConfiguration - Arguments for method UpdateMatchmakingConfiguration on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMatchmakingConfiguration on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateMatchmakingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMatchmakingConfiguration.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateMatchmakingConfigurationOutput =
      $gamelift->UpdateMatchmakingConfiguration(
      Name                     => 'MyMatchmakingConfigurationName',
      AcceptanceRequired       => 1,                                  # OPTIONAL
      AcceptanceTimeoutSeconds => 1,                                  # OPTIONAL
      AdditionalPlayerCount    => 1,                                  # OPTIONAL
      BackfillMode             => 'AUTOMATIC',                        # OPTIONAL
      CustomEventData          => 'MyCustomEventData',                # OPTIONAL
      Description              => 'MyNonZeroAndMaxString',            # OPTIONAL
      FlexMatchMode            => 'STANDALONE',                       # OPTIONAL
      GameProperties           => [
        {
          Key   => 'MyGamePropertyKey',                               # max: 32
          Value => 'MyGamePropertyValue',                             # max: 96

        },
        ...
      ],                                                              # OPTIONAL
      GameSessionData      => 'MyGameSessionData',                    # OPTIONAL
      GameSessionQueueArns => [
        'MyArnStringModel', ...    # min: 1, max: 256
      ],                           # OPTIONAL
      NotificationTarget    => 'MySnsArnStringModel',         # OPTIONAL
      RequestTimeoutSeconds => 1,                             # OPTIONAL
      RuleSetName           => 'MyMatchmakingRuleSetName',    # OPTIONAL
      );

    # Results:
    my $Configuration = $UpdateMatchmakingConfigurationOutput->Configuration;

    # Returns a L<Paws::GameLift::UpdateMatchmakingConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateMatchmakingConfiguration>

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

A flag that indicates whether a match that was created with this
configuration must be accepted by the matched players. To require
acceptance, set to TRUE. With this option enabled, matchmaking tickets
use the status C<REQUIRES_ACCEPTANCE> to indicate when a completed
potential match is waiting for player acceptance.



=head2 AcceptanceTimeoutSeconds => Int

The length of time (in seconds) to wait for players to accept a
proposed match, if acceptance is required.



=head2 AdditionalPlayerCount => Int

The number of player slots in a match to keep open for future players.
For example, if the configuration's rule set specifies a match for a
single 12-person team, and the additional player count is set to 2,
only 10 players are selected for the match. This parameter is not used
if C<FlexMatchMode> is set to C<STANDALONE>.



=head2 BackfillMode => Str

The method that is used to backfill game sessions created with this
matchmaking configuration. Specify MANUAL when your game manages
backfill requests manually or does not use the match backfill feature.
Specify AUTOMATIC to have GameLift create a StartMatchBackfill request
whenever a game session has one or more open slots. Learn more about
manual and automatic backfill in Backfill Existing Games with FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html).
Automatic backfill is not available when C<FlexMatchMode> is set to
C<STANDALONE>.

Valid values are: C<"AUTOMATIC">, C<"MANUAL">

=head2 CustomEventData => Str

Information to add to all events related to the matchmaking
configuration.



=head2 Description => Str

A descriptive label that is associated with matchmaking configuration.



=head2 FlexMatchMode => Str

Indicates whether this matchmaking configuration is being used with
GameLift hosting or as a standalone matchmaking solution.

=over

=item *

B<STANDALONE> - FlexMatch forms matches and returns match information,
including players and team assignments, in a MatchmakingSucceeded
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded)
event.

=item *

B<WITH_QUEUE> - FlexMatch forms matches and uses the specified GameLift
queue to start a game session for the match.

=back


Valid values are: C<"STANDALONE">, C<"WITH_QUEUE">

=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

A set of custom properties for a game session, formatted as key:value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match. This parameter is not used if C<FlexMatchMode>
is set to C<STANDALONE>.



=head2 GameSessionData => Str

A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).
This information is added to the new GameSession object that is created
for a successful match. This parameter is not used if C<FlexMatchMode>
is set to C<STANDALONE>.



=head2 GameSessionQueueArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a GameLift game session queue resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::gamesessionqueue/E<lt>queue
nameE<gt>>. Queues can be located in any Region. Queues are used to
start new GameLift-hosted game sessions for matches that are created
with this matchmaking configuration. If C<FlexMatchMode> is set to
C<STANDALONE>, do not set this parameter.



=head2 B<REQUIRED> Name => Str

A unique identifier for the matchmaking configuration to update. You
can use either the configuration name or ARN value.



=head2 NotificationTarget => Str

An SNS topic ARN that is set up to receive matchmaking notifications.
See Setting up notifications for matchmaking
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)
for more information.



=head2 RequestTimeoutSeconds => Int

The maximum duration, in seconds, that a matchmaking ticket can remain
in process before timing out. Requests that fail due to timing out can
be resubmitted as needed.



=head2 RuleSetName => Str

A unique identifier for the matchmaking rule set to use with this
configuration. You can use either the rule set name or ARN value. A
matchmaking configuration can only use rule sets that are defined in
the same Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMatchmakingConfiguration in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

