package Paws::Glue::SkewedInfo;
  use Moose;
  has SkewedColumnNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SkewedColumnValueLocationMaps => (is => 'ro', isa => 'Paws::Glue::LocationMap');
  has SkewedColumnValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SkewedInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SkewedInfo object:

  $service_obj->Method(Att1 => { SkewedColumnNames => $value, ..., SkewedColumnValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SkewedInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->SkewedColumnNames

=head1 DESCRIPTION

Specifies skewed values in a table. Skewed are ones that occur with
very high frequency.

=head1 ATTRIBUTES


=head2 SkewedColumnNames => ArrayRef[Str|Undef]

  A list of names of columns that contain skewed values.


=head2 SkewedColumnValueLocationMaps => L<Paws::Glue::LocationMap>

  A mapping of skewed values to the columns that contain them.


=head2 SkewedColumnValues => ArrayRef[Str|Undef]

  A list of values that appear so frequently as to be considered skewed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

