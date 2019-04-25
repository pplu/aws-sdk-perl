package Paws::GameLift::AttributeValue;
  use Moose;
  has N => (is => 'ro', isa => 'Num');
  has S => (is => 'ro', isa => 'Str');
  has SDM => (is => 'ro', isa => 'Paws::GameLift::StringDoubleMap');
  has SL => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::AttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::AttributeValue object:

  $service_obj->Method(Att1 => { N => $value, ..., SL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::AttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->N

=head1 DESCRIPTION

Values for use in Player attribute key:value pairs. This object lets
you specify an attribute value using any of the valid data types:
string, number, string array or data map. Each C<AttributeValue> object
can use only one of the available properties.

=head1 ATTRIBUTES


=head2 N => Num

  For number values, expressed as double.


=head2 S => Str

  For single string values. Maximum string length is 100 characters.


=head2 SDM => L<Paws::GameLift::StringDoubleMap>

  For a map of up to 10 data type:value pairs. Maximum length for each
string value is 100 characters.


=head2 SL => ArrayRef[Str|Undef]

  For a list of up to 10 strings. Maximum length for each string is 100
characters. Duplicate values are not recognized; all occurrences of the
repeated value after the first of a repeated value are ignored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

