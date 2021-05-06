
package Paws::IoT::UpdateThing;
  use Moose;
  has AttributePayload => (is => 'ro', isa => 'Paws::IoT::AttributePayload', traits => ['NameInRequest'], request_name => 'attributePayload');
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expectedVersion');
  has RemoveThingType => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeThingType');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingTypeName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateThing - Arguments for method UpdateThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateThingResponse = $iot->UpdateThing(
      ThingName        => 'MyThingName',
      AttributePayload => {
        Attributes => {
          'MyAttributeName' =>
            'MyAttributeValue',    # key: max: 128, value: max: 800
        },    # OPTIONAL
        Merge => 1,    # OPTIONAL
      },    # OPTIONAL
      ExpectedVersion => 1,                    # OPTIONAL
      RemoveThingType => 1,                    # OPTIONAL
      ThingTypeName   => 'MyThingTypeName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateThing>

=head1 ATTRIBUTES


=head2 AttributePayload => L<Paws::IoT::AttributePayload>

A list of thing attributes, a JSON string containing name-value pairs.
For example:

C<{\"attributes\":{\"name1\":\"value2\"}}>

This data is used to add new attributes or update existing attributes.



=head2 ExpectedVersion => Int

The expected version of the thing record in the registry. If the
version of the record in the registry does not match the expected
version specified in the request, the C<UpdateThing> request is
rejected with a C<VersionConflictException>.



=head2 RemoveThingType => Bool

Remove a thing type association. If B<true>, the association is
removed.



=head2 B<REQUIRED> ThingName => Str

The name of the thing to update.



=head2 ThingTypeName => Str

The name of the thing type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

