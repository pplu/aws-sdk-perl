package Paws::RDS::Range;
  use Moose;
  has From => (is => 'ro', isa => 'Int');
  has Step => (is => 'ro', isa => 'Int');
  has To => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Range

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::Range object:

  $service_obj->Method(Att1 => { From => $value, ..., To => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::Range object:

  $result = $service_obj->Method(...);
  $result->Att1->From

=head1 DESCRIPTION

A range of integer values.

=head1 ATTRIBUTES


=head2 From => Int

  The minimum value in the range.


=head2 Step => Int

  The step value for the range. For example, if you have a range of 5,000
to 10,000, with a step value of 1,000, the valid values start at 5,000
and step up by 1,000. Even though 7,500 is within the range, it isn't a
valid value for the range. The valid values are 5,000, 6,000, 7,000,
8,000...


=head2 To => Int

  The maximum value in the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

