package Paws::GroundStation::SatelliteListItem;
  use Moose;
  has GroundStations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'groundStations', traits => ['NameInRequest']);
  has NoradSatelliteID => (is => 'ro', isa => 'Int', request_name => 'noradSatelliteID', traits => ['NameInRequest']);
  has SatelliteArn => (is => 'ro', isa => 'Str', request_name => 'satelliteArn', traits => ['NameInRequest']);
  has SatelliteId => (is => 'ro', isa => 'Str', request_name => 'satelliteId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::SatelliteListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::SatelliteListItem object:

  $service_obj->Method(Att1 => { GroundStations => $value, ..., SatelliteId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::SatelliteListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->GroundStations

=head1 DESCRIPTION

Item in a list of satellites.

=head1 ATTRIBUTES


=head2 GroundStations => ArrayRef[Str|Undef]

  A list of ground stations to which the satellite is on-boarded.


=head2 NoradSatelliteID => Int

  NORAD satellite ID number.


=head2 SatelliteArn => Str

  ARN of a satellite.


=head2 SatelliteId => Str

  UUID of a satellite.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

