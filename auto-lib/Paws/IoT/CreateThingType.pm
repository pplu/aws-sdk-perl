
package Paws::IoT::CreateThingType;
  use Moose;
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName', required => 1);
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties', traits => ['NameInRequest'], request_name => 'thingTypeProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateThingTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingType - Arguments for method CreateThingType on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThingType on the 
AWS IoT service. Use the attributes of this class
as arguments to method CreateThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThingType.

As an example:

  $service_obj->CreateThingType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingTypeName => Str

The name of the thing type.



=head2 ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>

The ThingTypeProperties for the thing type to create. It contains
information about the new thing type including a description, and a
list of searchable thing attribute names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThingType in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

