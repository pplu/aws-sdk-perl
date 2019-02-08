
package Paws::GameLift::StartMatchmaking;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has Players => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Player]', required => 1);
  has TicketId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMatchmaking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartMatchmakingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartMatchmaking - Arguments for method StartMatchmaking on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMatchmaking on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method StartMatchmaking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMatchmaking.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $StartMatchmakingOutput = $gamelift->StartMatchmaking(
      ConfigurationName => 'MyMatchmakingIdStringModel',
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
    my $MatchmakingTicket = $StartMatchmakingOutput->MatchmakingTicket;

    # Returns a L<Paws::GameLift::StartMatchmakingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/StartMatchmaking>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

Name of the matchmaking configuration to use for this request.
Matchmaking configurations must exist in the same region as this
request.



=head2 B<REQUIRED> Players => ArrayRef[L<Paws::GameLift::Player>]

Information on each player to be matched. This information must include
a player ID, and may contain player attributes and latency data to be
used in the matchmaking process. After a successful match, C<Player>
objects contain the name of the team the player is assigned to.



=head2 TicketId => Str

Unique identifier for a matchmaking ticket. If no ticket ID is
specified here, Amazon GameLift will generate one in the form of a
UUID. Use this identifier to track the matchmaking ticket status and
retrieve match results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMatchmaking in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

