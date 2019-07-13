package Paws::GameLift::GameProperty;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameProperty object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Set of key-value pairs that contain information about a game session.
When included in a game session request, these properties communicate
details to be used when setting up the new game session, such as to
specify a game mode, level, or map. Game properties are passed to the
game server process when initiating a new game session; the server
process uses the properties as appropriate. For more information, see
the Amazon GameLift Developer Guide
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Game property identifier.


=head2 B<REQUIRED> Value => Str

  Game property value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

