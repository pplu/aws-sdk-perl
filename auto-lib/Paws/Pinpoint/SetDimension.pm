package Paws::Pinpoint::SetDimension;
  use Moose;
  has DimensionType => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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

Dimension specification of a segment.

=head1 ATTRIBUTES


=head2 DimensionType => Str

  The type of dimension: INCLUSIVE - Endpoints that match the criteria
are included in the segment. EXCLUSIVE - Endpoints that match the
criteria are excluded from the segment.


=head2 Values => ArrayRef[Str|Undef]

  The criteria values for the segment dimension. Endpoints with matching
attribute values are included or excluded from the segment, depending
on the setting for Type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

