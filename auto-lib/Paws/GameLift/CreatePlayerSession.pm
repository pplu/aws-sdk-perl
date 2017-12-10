
package Paws::GameLift::CreatePlayerSession;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerData => (is => 'ro', isa => 'Str');
  has PlayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlayerSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreatePlayerSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSession - Arguments for method CreatePlayerSession on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlayerSession on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreatePlayerSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlayerSession.

As an example:

  $service_obj->CreatePlayerSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to add a player to.



=head2 PlayerData => Str

Developer-defined information related to a player. Amazon GameLift does
not use this data, so it can be formatted as needed for use in the
game.



=head2 B<REQUIRED> PlayerId => Str

Unique identifier for a player. Player IDs are developer-defined.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlayerSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

