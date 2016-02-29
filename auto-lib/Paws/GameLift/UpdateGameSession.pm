
package Paws::GameLift::UpdateGameSession;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PlayerSessionCreationPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGameSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateGameSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameSession - Arguments for method UpdateGameSession on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGameSession on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method UpdateGameSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGameSession.

As an example:

  $service_obj->UpdateGameSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for a game session. Specify the game session you want
to update.



=head2 MaximumPlayerSessionCount => Int

Maximum number of players that can be simultaneously connected to the
game session.



=head2 Name => Str

Descriptive label associated with this game session. Session names do
not need to be unique.



=head2 PlayerSessionCreationPolicy => Str

Policy determining whether or not the game session accepts new players.

Valid values are: C<"ACCEPT_ALL">, C<"DENY_ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

