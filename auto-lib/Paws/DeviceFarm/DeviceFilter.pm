package Paws::DeviceFarm::DeviceFilter;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', request_name => 'attribute', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Str', request_name => 'operator', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeviceFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DeviceFilter object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DeviceFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

Represents a device filter used to select a set of devices to be
included in a test run. This data structure is passed in as the
"deviceSelectionConfiguration" parameter to ScheduleRun. For an example
of the JSON request syntax, see ScheduleRun.

It is also passed in as the "filters" parameter to ListDevices. For an
example of the JSON request syntax, see ListDevices.

=head1 ATTRIBUTES


=head2 Attribute => Str

  The aspect of a device such as platform or model used as the selection
criteria in a device filter.

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

=item *

REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote
debugging.

=item *

INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.

=item *

INSTANCE_LABELS: The label of the device instance.

=item *

FLEET_TYPE: The fleet type. Valid values are "PUBLIC" or "PRIVATE".

=back



=head2 Operator => Str

  The filter operator.

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



=head2 Values => ArrayRef[Str|Undef]

  An array of one or more filter values used in a device filter.

B<Operator Values>

=over

=item *

The IN and NOT operators can take a values array that has more than one
element.

=item *

The other operators require an array with a single element.

=back

B<Attribute Values>

=over

=item *

The PLATFORM attribute can be set to "ANDROID" or "IOS".

=item *

The AVAILABILITY attribute can be set to "AVAILABLE",
"HIGHLY_AVAILABLE", "BUSY", or "TEMPORARY_NOT_AVAILABLE".

=item *

The FORM_FACTOR attribute can be set to "PHONE" or "TABLET".

=item *

The FLEET_TYPE attribute can be set to "PUBLIC" or "PRIVATE".

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

