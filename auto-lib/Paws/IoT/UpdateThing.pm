
package Paws::IoT::UpdateThing;
  use Moose;
  has AttributePayload => (is => 'ro', isa => 'Paws::IoT::AttributePayload', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateThingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateThingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateThing - Arguments for method UpdateThing on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThing on the 
AWS IoT service. Use the attributes of this class
as arguments to method UpdateThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThing.

As an example:

  $service_obj->UpdateThing(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributePayload => L<Paws::IoT::AttributePayload>

  The attribute payload, a JSON string containing up to three key-value
pairs.

For example: {\"attributes\":{\"string1\":\"string2\E<rdquo>}}


=head2 B<REQUIRED> ThingName => Str

  The thing name.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

