
package Paws::GameLift::StartMatchBackfill;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has GameSessionArn => (is => 'ro', isa => 'Str');
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
      ConfigurationName => 'MyMatchmakingConfigurationName',
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
      GameSessionArn => 'MyArnStringModel',              # OPTIONAL
      TicketId       => 'MyMatchmakingIdStringModel',    # OPTIONAL
    );

    # Results:
    my $MatchmakingTicket = $StartMatchBackfillOutput->MatchmakingTicket;

    # Returns a L<Paws::GameLift::StartMatchBackfillOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartMatchBackfill>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

Name of the matchmaker to use for this request. You can use either the
configuration name or ARN value. The ARN of the matchmaker that was
used with the original game session is listed in the GameSession
object, C<MatchmakerData> property.



=head2 GameSessionArn => Str

A unique identifier for the game session. Use the game session ID. When
using FlexMatch as a standalone matchmaking solution, this parameter is
not needed.



=head2 B<REQUIRED> Players => ArrayRef[L<Paws::GameLift::Player>]

Match information on all players that are currently assigned to the
game session. This information is used by the matchmaker to find new
players and add them to the existing game.

=over

=item *

PlayerID, PlayerAttributes, Team -- This information is maintained in
the GameSession object, C<MatchmakerData> property, for all players who
are currently assigned to the game session. The matchmaker data is in
JSON syntax, formatted as a string. For more details, see Match Data
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data).

=item *

LatencyInMs -- If the matchmaker uses player latency, include a latency
value, in milliseconds, for the Region that the game session is
currently in. Do not include latency values for any other Region.

=back




=head2 TicketId => Str

A unique identifier for a matchmaking ticket. If no ticket ID is
specified here, Amazon GameLift will generate one in the form of a
UUID. Use this identifier to track the match backfill ticket status and
retrieve match results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMatchBackfill in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

