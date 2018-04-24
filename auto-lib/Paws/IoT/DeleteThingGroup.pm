
package Paws::IoT::DeleteThingGroup;
  use Moose;
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'expectedVersion');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteThingGroup - Arguments for method DeleteThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThingGroup on the 
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThingGroup.

As an example:

  $service_obj->DeleteThingGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the thing group to delete.



=head2 B<REQUIRED> ThingGroupName => Str

The name of the thing group to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

