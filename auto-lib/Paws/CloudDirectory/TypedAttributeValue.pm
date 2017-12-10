package Paws::CloudDirectory::TypedAttributeValue;
  use Moose;
  has BinaryValue => (is => 'ro', isa => 'Str');
  has BooleanValue => (is => 'ro', isa => 'Bool');
  has DatetimeValue => (is => 'ro', isa => 'Str');
  has NumberValue => (is => 'ro', isa => 'Str');
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedAttributeValue object:

  $service_obj->Method(Att1 => { BinaryValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->BinaryValue

=head1 DESCRIPTION

Represents the data for a typed attribute. You can set one, and only
one, of the elements. Each attribute in an item is a name-value pair.
Attributes have a single value.

=head1 ATTRIBUTES


=head2 BinaryValue => Str

  A binary data value.


=head2 BooleanValue => Bool

  A Boolean data value.


=head2 DatetimeValue => Str

  A date and time value.


=head2 NumberValue => Str

  A number data value.


=head2 StringValue => Str

  A string data value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

