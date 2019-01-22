package Paws::DynamoDB::AttributeValue;
  use Moose;
  has B => (is => 'ro', isa => 'Str');
  has BOOL => (is => 'ro', isa => 'Bool');
  has BS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has L => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeValue]');
  has M => (is => 'ro', isa => 'Paws::DynamoDB::MapAttributeValue');
  has N => (is => 'ro', isa => 'Str');
  has NS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NULL => (is => 'ro', isa => 'Bool');
  has S => (is => 'ro', isa => 'Str');
  has SS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::AttributeValue object:

  $service_obj->Method(Att1 => { B => $value, ..., SS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::AttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->B

=head1 DESCRIPTION

Represents the data for an attribute.

Each attribute value is described as a name-value pair. The name is the
data type, and the value is the data itself.

For more information, see Data Types
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes)
in the I<Amazon DynamoDB Developer Guide>.

=head1 ATTRIBUTES


=head2 B => Str

  An attribute of type Binary. For example:

C<"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk">


=head2 BOOL => Bool

  An attribute of type Boolean. For example:

C<"BOOL": true>


=head2 BS => ArrayRef[Str|Undef]

  An attribute of type Binary Set. For example:

C<"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]>


=head2 L => ArrayRef[L<Paws::DynamoDB::AttributeValue>]

  An attribute of type List. For example:

C<"L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N", "3.14159"}]>


=head2 M => L<Paws::DynamoDB::MapAttributeValue>

  An attribute of type Map. For example:

C<"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}>


=head2 N => Str

  An attribute of type Number. For example:

C<"N": "123.45">

Numbers are sent across the network to DynamoDB as strings, to maximize
compatibility across languages and libraries. However, DynamoDB treats
them as number type attributes for mathematical operations.


=head2 NS => ArrayRef[Str|Undef]

  An attribute of type Number Set. For example:

C<"NS": ["42.2", "-19", "7.5", "3.14"]>

Numbers are sent across the network to DynamoDB as strings, to maximize
compatibility across languages and libraries. However, DynamoDB treats
them as number type attributes for mathematical operations.


=head2 NULL => Bool

  An attribute of type Null. For example:

C<"NULL": true>


=head2 S => Str

  An attribute of type String. For example:

C<"S": "Hello">


=head2 SS => ArrayRef[Str|Undef]

  An attribute of type String Set. For example:

C<"SS": ["Giraffe", "Hippo" ,"Zebra"]>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

