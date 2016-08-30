
package Paws::IoT::DeprecateThingType;
  use Moose;
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName' , required => 1);
  has UndoDeprecate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}/deprecate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeprecateThingTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeprecateThingType - Arguments for method DeprecateThingType on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeprecateThingType on the 
AWS IoT service. Use the attributes of this class
as arguments to method DeprecateThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeprecateThingType.

As an example:

  $service_obj->DeprecateThingType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingTypeName => Str

The name of the thing type to deprecate.



=head2 UndoDeprecate => Bool

Whether to undeprecate a deprecated thing type. If B<true>, the thing
type will not be deprecated anymore and you can associate it with
things.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeprecateThingType in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

