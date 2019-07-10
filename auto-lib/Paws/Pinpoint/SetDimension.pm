package Paws::Pinpoint::SetDimension;
  use Moose;
  has DimensionType => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SetDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SetDimension object:

  $service_obj->Method(Att1 => { DimensionType => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SetDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionType

=head1 DESCRIPTION

Specifies the dimension type and values for a segment dimension.

=head1 ATTRIBUTES


=head2 DimensionType => Str

  The type of segment dimension to use. Valid values are: INCLUSIVE,
endpoints that match the criteria are included in the segment; and,
EXCLUSIVE, endpoints that match the criteria are excluded from the
segment.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The criteria values to use for the segment dimension. Depending on the
value of the DimensionType property, endpoints are included or excluded
from the segment if their values match the criteria values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

