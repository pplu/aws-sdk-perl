package Paws::DynamoDB::AttributeValue;
  use Moose;
  has B => (is => 'ro', isa => 'Str');
  has BOOL => (is => 'ro', isa => 'Bool');
  has BS => (is => 'ro', isa => 'ArrayRef[Str]');
  has L => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeValue]');
  has M => (is => 'ro', isa => 'Paws::DynamoDB::MapAttributeValue');
  has N => (is => 'ro', isa => 'Str');
  has NS => (is => 'ro', isa => 'ArrayRef[Str]');
  has NULL => (is => 'ro', isa => 'Bool');
  has S => (is => 'ro', isa => 'Str');
  has SS => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AttributeValue

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 B => Str

  A Binary data type.

=head2 BOOL => Bool

  A Boolean data type.

=head2 BS => ArrayRef[Str]

  A Binary Set data type.

=head2 L => ArrayRef[L<Paws::DynamoDB::AttributeValue>]

  A List of attribute values.

=head2 M => L<Paws::DynamoDB::MapAttributeValue>

  A Map of attribute values.

=head2 N => Str

  A Number data type.

=head2 NS => ArrayRef[Str]

  A Number Set data type.

=head2 NULL => Bool

  A Null data type.

=head2 S => Str

  A String data type.

=head2 SS => ArrayRef[Str]

  A String Set data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

