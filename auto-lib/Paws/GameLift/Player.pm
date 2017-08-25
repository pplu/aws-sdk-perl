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

Object used in matchmaking to represent a player. When starting a
matchmaking request, a player has a player ID and may have latency
data. Team information is added after a match has been successfully
completed.

=head1 ATTRIBUTES


=head2 LatencyInMs => L<Paws::GameLift::LatencyMap>

  Set of values, expressed in milliseconds, indicating the amount of
latency that a player experiences when connected to AWS regions. If
this property is present, FlexMatch considers placing the match only in
regions that are included in the object map. If not present (that is,
null), FlexMatch ignores latency issues and may place the match in any
region in the queue.

If this property contains an empty map, FlexMatch assumes that no
regions are available to the player. In this scenario, the ticket is
not matchable and always times out unless canceled.


=head2 PlayerAttributes => L<Paws::GameLift::PlayerAttributeMap>

  Collection of name:value pairs containing player information for use in
matchmaking. Player attribute names need to match I<playerAttributes>
names in the rule set being used. Example: C<"PlayerAttributes":
{"skill": {"N": "23"}, "gameMode": {"S": "deathmatch"}}>.


=head2 PlayerId => Str

  Unique identifier for a player


=head2 Team => Str

  Name of the team that the player is assigned to in a match. Team names
are defined in a matchmaking rule set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

