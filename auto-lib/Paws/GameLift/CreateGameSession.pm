
package Paws::GameLift::CreateGameSession;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGameSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateGameSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSession - Arguments for method CreateGameSession on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGameSession on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateGameSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGameSession.

As an example:

  $service_obj->CreateGameSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AliasId => Str

Unique identifier for a fleet alias. Each request must reference either
a fleet ID or alias ID, but not both.



=head2 CreatorId => Str

Player ID identifying the person or entity creating the game session.
This ID is used to enforce a resource protection policy (if one exists)
that limits the number of concurrent active game sessions one player
can have.



=head2 FleetId => Str

Unique identifier for a fleet. Each request must reference either a
fleet ID or alias ID, but not both.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of properties used to administer a game session. These properties
are passed to the server process hosting it.



=head2 GameSessionId => Str

Custom string to include in the game session ID, with a maximum length
of 48 characters. If this parameter is set, GameLift creates a game
session ID in the following format:
"arn:aws:gamelift:E<lt>regionE<gt>::gamesession/fleet-E<lt>fleet
IDE<gt>/E<lt>custom ID stringE<gt>". For example, this full game
session ID:
"arn:aws:gamelift:us-west-2::gamesession/fleet-2ec2aae5-c2c7-43ca-b19d-8249fe5fddf2/my-game-session"
includes the custom ID string "my-game-session". If this parameter is
not set, GameLift creates a game session ID in the same format with an
auto-generated ID string.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 Name => Str

Descriptive label associated with a game session. Session names do not
need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

