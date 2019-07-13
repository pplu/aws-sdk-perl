package Paws::GameLift::PlacedPlayerSession;
  use Moose;
  has PlayerId => (is => 'ro', isa => 'Str');
  has PlayerSessionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PlacedPlayerSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::PlacedPlayerSession object:

  $service_obj->Method(Att1 => { PlayerId => $value, ..., PlayerSessionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::PlacedPlayerSession object:

  $result = $service_obj->Method(...);
  $result->Att1->PlayerId

=head1 DESCRIPTION

Information about a player session that was created as part of a
StartGameSessionPlacement request. This object contains only the player
ID and player session ID. To retrieve full details on a player session,
call DescribePlayerSessions with the player session ID.

=over

=item *

CreatePlayerSession

=item *

CreatePlayerSessions

=item *

DescribePlayerSessions

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back


=head1 ATTRIBUTES


=head2 PlayerId => Str

  Unique identifier for a player that is associated with this player
session.


=head2 PlayerSessionId => Str

  Unique identifier for a player session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

