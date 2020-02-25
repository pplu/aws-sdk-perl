package Paws::GroundStation::GroundStationData;
  use Moose;
  has GroundStationId => (is => 'ro', isa => 'Str', request_name => 'groundStationId', traits => ['NameInRequest']);
  has GroundStationName => (is => 'ro', isa => 'Str', request_name => 'groundStationName', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GroundStationData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::GroundStationData object:

  $service_obj->Method(Att1 => { GroundStationId => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::GroundStationData object:

  $result = $service_obj->Method(...);
  $result->Att1->GroundStationId

=head1 DESCRIPTION

Information about the ground station data.

=head1 ATTRIBUTES


=head2 GroundStationId => Str

  UUID of a ground station.


=head2 GroundStationName => Str

  Name of a ground station.


=head2 Region => Str

  Ground station Region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

