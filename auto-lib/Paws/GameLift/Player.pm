package Paws::GameLift::Player;
  use Moose;
  has LatencyInMs => (is => 'ro', isa => 'Paws::GameLift::LatencyMap');
  has PlayerAttributes => (is => 'ro', isa => 'Paws::GameLift::PlayerAttributeMap');
  has PlayerId => (is => 'ro', isa => 'Str');
  has Team => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Player

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Player object:

  $service_obj->Method(Att1 => { LatencyInMs => $value, ..., Team => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Player object:

  $result = $service_obj->Method(...);
  $result->Att1->LatencyInMs

=head1 DESCRIPTION

Represents a player in matchmaking. When starting a matchmaking
request, a player has a player ID, attributes, and may have latency
data. Team information is added after a match has been successfully
completed.

=head1 ATTRIBUTES


=head2 LatencyInMs => L<Paws::GameLift::LatencyMap>

  Set of values, expressed in milliseconds, indicating the amount of
latency that a player experiences when connected to AWS regions. If
this property is present, FlexMatch considers placing the match only in
regions for which latency is reported.

If a matchmaker has a rule that evaluates player latency, players must
report latency in order to be matched. If no latency is reported in
this scenario, FlexMatch assumes that no regions are available to the
player and the ticket is not matchable.


=head2 PlayerAttributes => L<Paws::GameLift::PlayerAttributeMap>

  Collection of key:value pairs containing player information for use in
matchmaking. Player attribute keys must match the I<playerAttributes>
used in a matchmaking rule set. Example: C<"PlayerAttributes":
{"skill": {"N": "23"}, "gameMode": {"S": "deathmatch"}}>.


=head2 PlayerId => Str

  Unique identifier for a player


=head2 Team => Str

  Name of the team that the player is assigned to in a match. Team names
are defined in a matchmaking rule set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

