
package Paws::GameLift::StartMatchBackfill;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has GameSessionArn => (is => 'ro', isa => 'Str', required => 1);
  has Players => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Player]', required => 1);
  has TicketId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMatchBackfill');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartMatchBackfillOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartMatchBackfill - Arguments for method StartMatchBackfill on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMatchBackfill on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method StartMatchBackfill.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMatchBackfill.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $StartMatchBackfillOutput = $gamelift->StartMatchBackfill(
      ConfigurationName => 'MyMatchmakingIdStringModel',
      GameSessionArn    => 'MyArnStringModel',
      Players           => [
        {
          LatencyInMs => {
            'MyNonEmptyString' => 1,    # key: min: 1, value: min: 1
          },    # OPTIONAL
          PlayerAttributes => {
            'MyNonZeroAndMaxString' => {
              N   => 1,                          # OPTIONAL
              S   => 'MyNonZeroAndMaxString',    # min: 1, max: 1024; OPTIONAL
              SDM => {
                'MyNonZeroAndMaxString' =>
                  1,    # key: min: 1, max: 1024; OPTIONAL, value: OPTIONAL
              },    # OPTIONAL
              SL => [
                'MyNonZeroAndMaxString', ...    # min: 1, max: 1024; OPTIONAL
              ],                                # OPTIONAL
            },    # key: min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          PlayerId => 'MyNonZeroAndMaxString',    # min: 1, max: 1024; OPTIONAL
          Team     => 'MyNonZeroAndMaxString',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      TicketId => 'MyMatchmakingIdStringModel',    # OPTIONAL
    );

    # Results:
    my $MatchmakingTicket = $StartMatchBackfillOutput->MatchmakingTicket;

    # Returns a L<Paws::GameLift::StartMatchBackfillOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartMatchBackfill>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

Name of the matchmaker to use for this request. The name of the
matchmaker that was used with the original game session is listed in
the GameSession object, C<MatchmakerData> property. This property
contains a matchmaking configuration ARN value, which includes the
matchmaker name. (In the ARN value
"arn:aws:gamelift:us-west-2:111122223333:matchmakingconfiguration/MM-4v4",
the matchmaking configuration name is "MM-4v4".) Use only the name for
this parameter.



=head2 B<REQUIRED> GameSessionArn => Str

Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a game session and uniquely identifies it.



=head2 B<REQUIRED> Players => ArrayRef[L<Paws::GameLift::Player>]

Match information on all players that are currently assigned to the
game session. This information is used by the matchmaker to find new
players and add them to the existing game.

=over

=item *

PlayerID, PlayerAttributes, Team -\\- This information is maintained in
the GameSession object, C<MatchmakerData> property, for all players who
are currently assigned to the game session. The matchmaker data is in
JSON syntax, formatted as a string. For more details, see Match Data
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data).

=item *

LatencyInMs -\\- If the matchmaker uses player latency, include a
latency value, in milliseconds, for the region that the game session is
currently in. Do not include latency values for any other region.

=back




=head2 TicketId => Str

Unique identifier for a matchmaking ticket. If no ticket ID is
specified here, Amazon GameLift will generate one in the form of a
UUID. Use this identifier to track the match backfill ticket status and
retrieve match results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMatchBackfill in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

