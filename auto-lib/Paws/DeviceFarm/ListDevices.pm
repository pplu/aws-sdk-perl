
package Paws::DeviceFarm::ListDevices;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DeviceFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListDevicesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevices - Arguments for method ListDevices on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To get information about devices
    # The following example returns information about the available devices in a
    # specific project.
    my $ListDevicesResult = $devicefarm->ListDevices(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListDevices>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the project.



=head2 Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>]

Used to select a set of devices. A filter is made up of an attribute,
an operator, and one or more values.

=over

=item *

Attribute: The aspect of a device such as platform or model used as the
selction criteria in a device filter.

Allowed values include:

=over

=item *

ARN: The Amazon Resource Name (ARN) of the device. For example,
"arn:aws:devicefarm:us-west-2::device:12345Example".

=item *

PLATFORM: The device platform. Valid values are "ANDROID" or "IOS".

=item *

OS_VERSION: The operating system version. For example, "10.3.2".

=item *

MODEL: The device model. For example, "iPad 5th Gen".

=item *

AVAILABILITY: The current availability of the device. Valid values are
"AVAILABLE", "HIGHLY_AVAILABLE", "BUSY", or "TEMPORARY_NOT_AVAILABLE".

=item *

FORM_FACTOR: The device form factor. Valid values are "PHONE" or
"TABLET".

=item *

MANUFACTURER: The device manufacturer. For example, "Apple".

=item *

REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.
Valid values are "TRUE" or "FALSE".

=item *

REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote
debugging. Valid values are "TRUE" or "FALSE".

=item *

INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.

=item *

INSTANCE_LABELS: The label of the device instance.

=item *

FLEET_TYPE: The fleet type. Valid values are "PUBLIC" or "PRIVATE".

=back

=item *

Operator: The filter operator.

=over

=item *

The EQUALS operator is available for every attribute except
INSTANCE_LABELS.

=item *

The CONTAINS operator is available for the INSTANCE_LABELS and MODEL
attributes.

=item *

The IN and NOT_IN operators are available for the ARN, OS_VERSION,
MODEL, MANUFACTURER, and INSTANCE_ARN attributes.

=item *

The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION
attribute.

=back

=item *

Values: An array of one or more filter values.

=over

=item *

The IN and NOT_IN operators take a values array that has one or more
elements.

=item *

The other operators require an array with a single element.

=item *

In a request, the AVAILABILITY attribute takes "AVAILABLE",
"HIGHLY_AVAILABLE", "BUSY", or "TEMPORARY_NOT_AVAILABLE" as values.

=back

=back




=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

