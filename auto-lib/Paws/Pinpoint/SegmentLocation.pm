package Paws::Pinpoint::SegmentLocation;
  use Moose;
  has Country => (is => 'ro', isa => 'Paws::Pinpoint::SetDimension');
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

  $service_obj->Method(Att1 => { Country => $value, ..., Country => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Country

=head1 DESCRIPTION

Segment location dimensions

=head1 ATTRIBUTES


=head2 Country => L<Paws::Pinpoint::SetDimension>

  The country filter according to ISO 3166-1 Alpha-2 codes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

