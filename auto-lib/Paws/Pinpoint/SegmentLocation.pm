package Paws::Pinpoint::SegmentLocation;
  use Moose;
  has Country => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
  has GPSPoint => (is => 'ro', isa => 'Paws::Pinpoint::GPSPointDimension');
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

Segment location dimensions

=head1 ATTRIBUTES


=head2 Country => L<Paws::Pinpoint::SetDimension>

  The country or region, in ISO 3166-1 alpha-2 format.


=head2 GPSPoint => L<Paws::Pinpoint::GPSPointDimension>

  The GPS Point dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

