package Paws::GameLift::PlayerLatency;
  use Moose;
  has LatencyInMilliseconds => (is => 'ro', isa => 'Num');
  has PlayerId => (is => 'ro', isa => 'Str');
  has RegionIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PlayerLatency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::PlayerLatency object:

  $service_obj->Method(Att1 => { LatencyInMilliseconds => $value, ..., RegionIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::PlayerLatency object:

  $result = $service_obj->Method(...);
  $result->Att1->LatencyInMilliseconds

=head1 DESCRIPTION

Regional latency information for a player, used when requesting a new
game session with StartGameSessionPlacement. This value indicates the
amount of time lag that exists when the player is connected to a fleet
in the specified region. The relative difference between a player's
latency values for multiple regions are used to determine which fleets
are best suited to place a new game session for the player.

=head1 ATTRIBUTES


=head2 LatencyInMilliseconds => Num

  Amount of time that represents the time lag experienced by the player
when connected to the specified region.


=head2 PlayerId => Str

  Unique identifier for a player associated with the latency data.


=head2 RegionIdentifier => Str

  Name of the region that is associated with the latency value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

