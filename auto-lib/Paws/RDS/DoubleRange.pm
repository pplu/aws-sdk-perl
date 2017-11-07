package Paws::RDS::DoubleRange;
  use Moose;
  has From => (is => 'ro', isa => 'Num');
  has To => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DoubleRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DoubleRange object:

  $service_obj->Method(Att1 => { From => $value, ..., To => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DoubleRange object:

  $result = $service_obj->Method(...);
  $result->Att1->From

=head1 DESCRIPTION

A range of double values.

=head1 ATTRIBUTES


=head2 From => Num

  The minimum value in the range.


=head2 To => Num

  The maximum value in the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

