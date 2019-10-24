# Generated from default/object.tt
package Paws::Pinpoint::GPSPointDimension;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::Pinpoint::Types qw/Pinpoint_GPSCoordinates/;
  has Coordinates => (is => 'ro', isa => Pinpoint_GPSCoordinates, required => 1);
  has RangeInKilometers => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Coordinates' => {
                                  'class' => 'Paws::Pinpoint::GPSCoordinates',
                                  'type' => 'Pinpoint_GPSCoordinates'
                                },
               'RangeInKilometers' => {
                                        'type' => 'Num'
                                      }
             },
  'IsRequired' => {
                    'Coordinates' => 1
                  }
}
;
    return $Params_map;
  }


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

Specifies GPS-based criteria for including or excluding endpoints from
a segment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Coordinates => Pinpoint_GPSCoordinates

  The GPS coordinates to measure distance from.


=head2 RangeInKilometers => Num

  The range, in kilometers, from the GPS coordinates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

