package Paws::IoT::ThingAttribute;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::Attributes', xmlname => 'attributes', request_name => 'attributes', traits => ['Unwrapped','NameInRequest']);
  has ThingName => (is => 'ro', isa => 'Str', xmlname => 'thingName', request_name => 'thingName', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingAttribute object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Describes a thing attribute.

=head1 ATTRIBUTES

=head2 Attributes => L<Paws::IoT::Attributes>

  The attributes.

=head2 ThingName => Str

  The name of the thing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

