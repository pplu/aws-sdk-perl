# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::DissociateEntityFromThing;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has EntityType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ThingName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DissociateEntityFromThing');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::DissociateEntityFromThingResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingName' => {
                                'type' => 'Str'
                              },
               'EntityType' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'EntityType' => 1,
                    'ThingName' => 1
                  },
  'NameInRequest' => {
                       'EntityType' => 'entityType',
                       'ThingName' => 'thingName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DissociateEntityFromThing - Arguments for method DissociateEntityFromThing on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DissociateEntityFromThing on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method DissociateEntityFromThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DissociateEntityFromThing.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $DissociateEntityFromThingResponse =
      $iotthingsgraph->DissociateEntityFromThing(
      EntityType => 'DEVICE',
      ThingName  => 'MyThingName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/DissociateEntityFromThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityType => Str

The entity type from which to disassociate the thing.

Valid values are: C<"DEVICE">, C<"SERVICE">, C<"DEVICE_MODEL">, C<"CAPABILITY">, C<"STATE">, C<"ACTION">, C<"EVENT">, C<"PROPERTY">, C<"MAPPING">, C<"ENUM">

=head2 B<REQUIRED> ThingName => Str

The name of the thing to disassociate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DissociateEntityFromThing in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

