
package Paws::IoT::DeleteThing;
  use Moose;
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteThingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteThingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteThing - Arguments for method DeleteThing on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThing on the 
AWS IoT service. Use the attributes of this class
as arguments to method DeleteThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThing.

As an example:

  $service_obj->DeleteThing(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingName => Str

The thing name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

