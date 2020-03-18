package Paws::IoT::AssetPropertyVariant;
  use Moose;
  has BooleanValue => (is => 'ro', isa => 'Str', request_name => 'booleanValue', traits => ['NameInRequest']);
  has DoubleValue => (is => 'ro', isa => 'Str', request_name => 'doubleValue', traits => ['NameInRequest']);
  has IntegerValue => (is => 'ro', isa => 'Str', request_name => 'integerValue', traits => ['NameInRequest']);
  has StringValue => (is => 'ro', isa => 'Str', request_name => 'stringValue', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssetPropertyVariant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AssetPropertyVariant object:

  $service_obj->Method(Att1 => { BooleanValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AssetPropertyVariant object:

  $result = $service_obj->Method(...);
  $result->Att1->BooleanValue

=head1 DESCRIPTION

Contains an asset property value (of a single type).

=head1 ATTRIBUTES


=head2 BooleanValue => Str

  Optional. A string that contains the boolean value (C<true> or
C<false>) of the value entry. Accepts substitution templates.


=head2 DoubleValue => Str

  Optional. A string that contains the double value of the value entry.
Accepts substitution templates.


=head2 IntegerValue => Str

  Optional. A string that contains the integer value of the value entry.
Accepts substitution templates.


=head2 StringValue => Str

  Optional. The string value of the value entry. Accepts substitution
templates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

