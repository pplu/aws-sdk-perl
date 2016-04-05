
package Paws::GameLift::CreateGameSession;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
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



=head2 FleetId => Str

Unique identifier for a fleet. Each request must reference either a
fleet ID or alias ID, but not both.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of properties used to administer a game session. These properties
are passed to your game server.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 Name => Str

Descriptive label associated with this game session. Session names do
not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

