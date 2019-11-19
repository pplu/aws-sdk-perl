# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::AssociateEntityToThing;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has EntityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NamespaceVersion => (is => 'ro', isa => Int, predicate => 1);
  has ThingName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateEntityToThing');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::AssociateEntityToThingResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NamespaceVersion' => 'namespaceVersion',
                       'ThingName' => 'thingName',
                       'EntityId' => 'entityId'
                     },
  'IsRequired' => {
                    'EntityId' => 1,
                    'ThingName' => 1
                  },
  'types' => {
               'EntityId' => {
                               'type' => 'Str'
                             },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::AssociateEntityToThing - Arguments for method AssociateEntityToThing on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateEntityToThing on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method AssociateEntityToThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateEntityToThing.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $AssociateEntityToThingResponse =
      $iotthingsgraph->AssociateEntityToThing(
      EntityId         => 'MyUrn',
      ThingName        => 'MyThingName',
      NamespaceVersion => 1,               # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/AssociateEntityToThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The ID of the device to be associated with the thing.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME>



=head2 NamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.



=head2 B<REQUIRED> ThingName => Str

The name of the thing to which the entity is to be associated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateEntityToThing in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

