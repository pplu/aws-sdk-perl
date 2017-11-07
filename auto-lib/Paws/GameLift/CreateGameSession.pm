
package Paws::GameLift::CreateGameSession;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGameSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateGameSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSession - Arguments for method CreateGameSession on L<Paws::GameLift>

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

Unique identifier for an alias associated with the fleet to create a
game session in. Each request must reference either a fleet ID or alias
ID, but not both.



=head2 CreatorId => Str

Unique identifier for a player or entity creating the game session.
This ID is used to enforce a resource protection policy (if one exists)
that limits the number of concurrent active game sessions one player
can have.



=head2 FleetId => Str

Unique identifier for a fleet to create a game session in. Each request
must reference either a fleet ID or alias ID, but not both.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of developer-defined properties for a game session, formatted as a
set of type:value pairs. These properties are included in the
GameSession object, which is passed to the game server with a request
to start a new game session (see Start a Game Session
(http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).



=head2 GameSessionData => Str

Set of developer-defined game session properties, formatted as a single
string value. This data is included in the GameSession object, which is
passed to the game server with a request to start a new game session
(see Start a Game Session
(http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)).



=head2 GameSessionId => Str

I<This parameter is no longer preferred. Please use C<IdempotencyToken>
instead.> Custom string that uniquely identifies a request for a new
game session. Maximum token length is 48 characters. If provided, this
string is included in the new game session's ID. (A game session ARN
has the following format:
C<arn:aws:gamelift:E<lt>regionE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>.)



=head2 IdempotencyToken => Str

Custom string that uniquely identifies a request for a new game
session. Maximum token length is 48 characters. If provided, this
string is included in the new game session's ID. (A game session ARN
has the following format:
C<arn:aws:gamelift:E<lt>regionE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>.) Idempotency
tokens remain in use for 30 days after a game session has ended; game
session objects are retained for this time period and then deleted.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 Name => Str

Descriptive label that is associated with a game session. Session names
do not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

