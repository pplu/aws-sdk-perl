# Generated from default/object.tt
package Paws::Pinpoint::SegmentLocation;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_SetDimension Pinpoint_GPSPointDimension/;
  has Country => (is => 'ro', isa => Pinpoint_SetDimension);
  has GPSPoint => (is => 'ro', isa => Pinpoint_GPSPointDimension);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GPSPoint' => {
                               'type' => 'Pinpoint_GPSPointDimension',
                               'class' => 'Paws::Pinpoint::GPSPointDimension'
                             },
               'Country' => {
                              'class' => 'Paws::Pinpoint::SetDimension',
                              'type' => 'Pinpoint_SetDimension'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentLocation object:

  $service_obj->Method(Att1 => { Country => $value, ..., GPSPoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Country

=head1 DESCRIPTION

Specifies geographical dimension settings for a segment.

=head1 ATTRIBUTES


=head2 Country => Pinpoint_SetDimension

  The country or region code, in ISO 3166-1 alpha-2 format, for the
segment.


=head2 GPSPoint => Pinpoint_GPSPointDimension

  The GPS location and range for the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

