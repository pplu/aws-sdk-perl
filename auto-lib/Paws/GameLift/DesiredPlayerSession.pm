package Paws::GameLift::DesiredPlayerSession;
  use Moose;
  has PlayerData => (is => 'ro', isa => 'Str');
  has PlayerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DesiredPlayerSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::DesiredPlayerSession object:

  $service_obj->Method(Att1 => { PlayerData => $value, ..., PlayerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::DesiredPlayerSession object:

  $result = $service_obj->Method(...);
  $result->Att1->PlayerData

=head1 DESCRIPTION

Player information for use when creating player sessions using a game
session placement request with StartGameSessionPlacement.

=head1 ATTRIBUTES


=head2 PlayerData => Str

  Developer-defined information related to a player. Amazon GameLift does
not use this data, so it can be formatted as needed for use in the
game.


=head2 PlayerId => Str

  Unique identifier for a player to associate with the player session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

