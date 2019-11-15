package Paws::RDSData::ArrayValue;
  use Moose;
  has ArrayValues => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::ArrayValue]', request_name => 'arrayValues', traits => ['NameInRequest']);
  has BooleanValues => (is => 'ro', isa => 'ArrayRef[Bool]', request_name => 'booleanValues', traits => ['NameInRequest']);
  has DoubleValues => (is => 'ro', isa => 'ArrayRef[Num]', request_name => 'doubleValues', traits => ['NameInRequest']);
  has LongValues => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'longValues', traits => ['NameInRequest']);
  has StringValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'stringValues', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ArrayValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::ArrayValue object:

  $service_obj->Method(Att1 => { ArrayValues => $value, ..., StringValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::ArrayValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayValues

=head1 DESCRIPTION

Contains an array.

=head1 ATTRIBUTES


=head2 ArrayValues => ArrayRef[L<Paws::RDSData::ArrayValue>]

  An array of arrays.


=head2 BooleanValues => ArrayRef[Bool]

  An array of Boolean values.


=head2 DoubleValues => ArrayRef[Num]

  An array of integers.


=head2 LongValues => ArrayRef[Int]

  An array of floating point numbers.


=head2 StringValues => ArrayRef[Str|Undef]

  An array of strings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

