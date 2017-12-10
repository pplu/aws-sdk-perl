package Paws::DynamoDBStreams::AttributeValue;
  use Moose;
  has B => (is => 'ro', isa => 'Str');
  has BOOL => (is => 'ro', isa => 'Bool');
  has BS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has L => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDBStreams::AttributeValue]');
  has M => (is => 'ro', isa => 'Paws::DynamoDBStreams::MapAttributeValue');
  has N => (is => 'ro', isa => 'Str');
  has NS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NULL => (is => 'ro', isa => 'Bool');
  has S => (is => 'ro', isa => 'Str');
  has SS => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::AttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::AttributeValue object:

  $service_obj->Method(Att1 => { B => $value, ..., SS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::AttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->B

=head1 DESCRIPTION

Represents the data for an attribute. You can set one, and only one, of
the elements.

Each attribute in an item is a name-value pair. An attribute can be
single-valued or multi-valued set. For example, a book item can have
title and authors attributes. Each book has one title but can have many
authors. The multi-valued attribute is a set; duplicate values are not
allowed.

=head1 ATTRIBUTES


=head2 B => Str

  A Binary data type.


=head2 BOOL => Bool

  A Boolean data type.


=head2 BS => ArrayRef[Str|Undef]

  A Binary Set data type.


=head2 L => ArrayRef[L<Paws::DynamoDBStreams::AttributeValue>]

  A List data type.


=head2 M => L<Paws::DynamoDBStreams::MapAttributeValue>

  A Map data type.


=head2 N => Str

  A Number data type.


=head2 NS => ArrayRef[Str|Undef]

  A Number Set data type.


=head2 NULL => Bool

  A Null data type.


=head2 S => Str

  A String data type.


=head2 SS => ArrayRef[Str|Undef]

  A String Set data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

