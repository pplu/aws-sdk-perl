package Paws::GameLift::MatchedPlayerSession;
  use Moose;
  has PlayerId => (is => 'ro', isa => 'Str');
  has PlayerSessionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::MatchedPlayerSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::MatchedPlayerSession object:

  $service_obj->Method(Att1 => { PlayerId => $value, ..., PlayerSessionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::MatchedPlayerSession object:

  $result = $service_obj->Method(...);
  $result->Att1->PlayerId

=head1 DESCRIPTION

Represents a new player session that is created as a result of a
successful FlexMatch match. A successful match automatically creates
new player sessions for every player ID in the original matchmaking
request.

When players connect to the match's game session, they must include
both player ID and player session ID in order to claim their assigned
player slot.

=head1 ATTRIBUTES


=head2 PlayerId => Str

  Unique identifier for a player


=head2 PlayerSessionId => Str

  Unique identifier for a player session



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

