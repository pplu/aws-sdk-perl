
package Paws::GameLift::StartGameSessionPlacement;
  use Moose;
  has DesiredPlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::DesiredPlayerSession]');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionName => (is => 'ro', isa => 'Str');
  has GameSessionQueueName => (is => 'ro', isa => 'Str', required => 1);
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has PlacementId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerLatencies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatency]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartGameSessionPlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartGameSessionPlacementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartGameSessionPlacement - Arguments for method StartGameSessionPlacement on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartGameSessionPlacement on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method StartGameSessionPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartGameSessionPlacement.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $StartGameSessionPlacementOutput = $gamelift->StartGameSessionPlacement(
      GameSessionQueueName      => 'MyGameSessionQueueName',
      MaximumPlayerSessionCount => 1,
      PlacementId               => 'MyIdStringModel',
      DesiredPlayerSessions     => [
        {
          PlayerData => 'MyPlayerData',            # min: 1, max: 2048; OPTIONAL
          PlayerId   => 'MyNonZeroAndMaxString',   # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      GameProperties => [
        {
          Key   => 'MyGamePropertyKey',            # max: 32
          Value => 'MyGamePropertyValue',          # max: 96

        },
        ...
      ],                                           # OPTIONAL
      GameSessionData => 'MyGameSessionData',      # OPTIONAL
      GameSessionName => 'MyNonZeroAndMaxString',  # OPTIONAL
      PlayerLatencies => [
        {
          LatencyInMilliseconds => 1.0,            # OPTIONAL
          PlayerId => 'MyNonZeroAndMaxString',     # min: 1, max: 1024; OPTIONAL
          RegionIdentifier =>
            'MyNonZeroAndMaxString',               # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
    );

    # Results:
    my $GameSessionPlacement =
      $StartGameSessionPlacementOutput->GameSessionPlacement;

    # Returns a L<Paws::GameLift::StartGameSessionPlacementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartGameSessionPlacement>

=head1 ATTRIBUTES


=head2 DesiredPlayerSessions => ArrayRef[L<Paws::GameLift::DesiredPlayerSession>]

Set of information on each player to create a player session for.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of custom properties for a game session, formatted as key:value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
Start a Game Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).



=head2 GameSessionData => Str

Set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see Start a Game
Session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).



=head2 GameSessionName => Str

Descriptive label that is associated with a game session. Session names
do not need to be unique.



=head2 B<REQUIRED> GameSessionQueueName => Str

Name of the queue to use to place the new game session.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 B<REQUIRED> PlacementId => Str

Unique identifier to assign to the new game session placement. This
value is developer-defined. The value must be unique across all regions
and cannot be reused unless you are resubmitting a canceled or
timed-out placement request.



=head2 PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]

Set of values, expressed in milliseconds, indicating the amount of
latency that a player experiences when connected to AWS regions. This
information is used to try to place the new game session where it can
offer the best possible gameplay experience for the players.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartGameSessionPlacement in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

