package Paws::IoT::AttributePayload;
  use Moose;
  has attributes => (is => 'ro', isa => 'Paws::IoT::Attributes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AttributePayload

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AttributePayload object:

  $service_obj->Method(Att1 => { attributes => $value, ..., attributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AttributePayload object:

  $result = $service_obj->Method(...);
  $result->Att1->attributes

=head1 ATTRIBUTES

=head2 attributes => Paws::IoT::Attributes

  

A JSON string containing up to three key-value pair in JSON format.

For example: {\"attributes\":{\"string1\":\"string2\E<rdquo>}}












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

