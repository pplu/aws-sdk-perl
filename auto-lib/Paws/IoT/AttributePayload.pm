package Paws::IoT::AttributePayload;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::Attributes', request_name => 'attributes', traits => ['NameInRequest']);
  has Merge => (is => 'ro', isa => 'Bool', request_name => 'merge', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AttributePayload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AttributePayload object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Merge => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AttributePayload object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The attribute payload.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::Attributes>

  A JSON string containing up to three key-value pair in JSON format. For
example:

C<{\"attributes\":{\"string1\":\"string2\"}}>


=head2 Merge => Bool

  Specifies whether the list of attributes provided in the
C<AttributePayload> is merged with the attributes stored in the
registry, instead of overwriting them.

To remove an attribute, call C<UpdateThing> with an empty attribute
value.

The C<merge> attribute is only valid when calling C<UpdateThing>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

