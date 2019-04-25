
package Paws::IoT::DeprecateThingType;
  use Moose;
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName', required => 1);
  has UndoDeprecate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'undoDeprecate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprecateThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}/deprecate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeprecateThingTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeprecateThingType - Arguments for method DeprecateThingType on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeprecateThingType on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeprecateThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeprecateThingType.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeprecateThingTypeResponse = $iot->DeprecateThingType(
      ThingTypeName => 'MyThingTypeName',
      UndoDeprecate => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeprecateThingType>

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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

