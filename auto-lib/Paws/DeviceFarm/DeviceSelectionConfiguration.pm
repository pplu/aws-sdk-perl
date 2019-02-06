package Paws::DeviceFarm::DeviceSelectionConfiguration;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DeviceFilter]', request_name => 'filters', traits => ['NameInRequest'], required => 1);
  has MaxDevices => (is => 'ro', isa => 'Int', request_name => 'maxDevices', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeviceSelectionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DeviceSelectionConfiguration object:

  $service_obj->Method(Att1 => { Filters => $value, ..., MaxDevices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DeviceSelectionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

Represents the device filters used in a test run as well as the maximum
number of devices to be included in the run. It is passed in as the
C<deviceSelectionConfiguration> request parameter in ScheduleRun.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>]

  Used to dynamically select a set of devices for a test run. A filter is
made up of an attribute, an operator, and one or more values.

=over

=item *

B<Attribute>

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

B<Operator>

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

=item *

B<Values>

An array of one or more filter values.

B<Operator Values>

=over

=item *

The IN and NOT_IN operators can take a values array that has more than
one element.

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

=back



=head2 B<REQUIRED> MaxDevices => Int

  The maximum number of devices to be included in a test run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

