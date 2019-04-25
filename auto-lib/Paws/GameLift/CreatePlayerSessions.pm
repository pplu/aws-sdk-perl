
package Paws::GameLift::CreatePlayerSessions;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerDataMap => (is => 'ro', isa => 'Paws::GameLift::PlayerDataMap');
  has PlayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlayerSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreatePlayerSessionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSessions - Arguments for method CreatePlayerSessions on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlayerSessions on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreatePlayerSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlayerSessions.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreatePlayerSessionsOutput = $gamelift->CreatePlayerSessions(
      GameSessionId => 'MyArnStringModel',
      PlayerIds     => [
        'MyNonZeroAndMaxString', ...    # min: 1, max: 1024
      ],
      PlayerDataMap => {
        'MyNonZeroAndMaxString' =>
          'MyPlayerData',    # key: min: 1, max: 1024, value: min: 1, max: 2048
      },    # OPTIONAL
    );

    # Results:
    my $PlayerSessions = $CreatePlayerSessionsOutput->PlayerSessions;

    # Returns a L<Paws::GameLift::CreatePlayerSessionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreatePlayerSessions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to add players to.



=head2 PlayerDataMap => L<Paws::GameLift::PlayerDataMap>

Map of string pairs, each specifying a player ID and a set of
developer-defined information related to the player. Amazon GameLift
does not use this data, so it can be formatted as needed for use in the
game. Player data strings for player IDs not included in the
C<PlayerIds> parameter are ignored.



=head2 B<REQUIRED> PlayerIds => ArrayRef[Str|Undef]

List of unique identifiers for the players to be added.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlayerSessions in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

