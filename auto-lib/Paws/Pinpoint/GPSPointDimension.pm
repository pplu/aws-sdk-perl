package Paws::Pinpoint::GPSPointDimension;
  use Moose;
  has Coordinates => (is => 'ro', isa => 'Paws::Pinpoint::GPSCoordinates');
  has RangeInKilometers => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GPSPointDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GPSPointDimension object:

  $service_obj->Method(Att1 => { Coordinates => $value, ..., RangeInKilometers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GPSPointDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Coordinates

=head1 DESCRIPTION

GPS point location dimension

=head1 ATTRIBUTES


=head2 Coordinates => L<Paws::Pinpoint::GPSCoordinates>

  Coordinate to measure distance from.


=head2 RangeInKilometers => Num

  Range in kilometers from the coordinate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

