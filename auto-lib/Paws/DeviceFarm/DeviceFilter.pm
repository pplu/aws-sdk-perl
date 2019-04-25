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
C<deviceSelectionConfiguration> parameter to ScheduleRun. For an
example of the JSON request syntax, see ScheduleRun.

It is also passed in as the C<filters> parameter to ListDevices. For an
example of the JSON request syntax, see ListDevices.

=head1 ATTRIBUTES


=head2 Attribute => Str

  The aspect of a device such as platform or model used as the selection
criteria in a device filter.

The supported operators for each attribute are provided in the
following list.

=over

=item ARN

The Amazon Resource Name (ARN) of the device. For example,
"arn:aws:devicefarm:us-west-2::device:12345Example".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item PLATFORM

The device platform. Valid values are "ANDROID" or "IOS".

I<Supported operators>: C<EQUALS>

=item OS_VERSION

The operating system version. For example, "10.3.2".

I<Supported operators>: C<EQUALS>, C<GREATER_THAN>,
C<GREATER_THAN_OR_EQUALS>, C<IN>, C<LESS_THAN>, C<LESS_THAN_OR_EQUALS>,
C<NOT_IN>

=item MODEL

The device model. For example, "iPad 5th Gen".

I<Supported operators>: C<CONTAINS>, C<EQUALS>, C<IN>, C<NOT_IN>

=item AVAILABILITY

The current availability of the device. Valid values are "AVAILABLE",
"HIGHLY_AVAILABLE", "BUSY", or "TEMPORARY_NOT_AVAILABLE".

I<Supported operators>: C<EQUALS>

=item FORM_FACTOR

The device form factor. Valid values are "PHONE" or "TABLET".

I<Supported operators>: C<EQUALS>

=item MANUFACTURER

The device manufacturer. For example, "Apple".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item REMOTE_ACCESS_ENABLED

Whether the device is enabled for remote access. Valid values are
"TRUE" or "FALSE".

I<Supported operators>: C<EQUALS>

=item REMOTE_DEBUG_ENABLED

Whether the device is enabled for remote debugging. Valid values are
"TRUE" or "FALSE".

I<Supported operators>: C<EQUALS>

=item INSTANCE_ARN

The Amazon Resource Name (ARN) of the device instance.

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item INSTANCE_LABELS

The label of the device instance.

I<Supported operators>: C<CONTAINS>

=item FLEET_TYPE

The fleet type. Valid values are "PUBLIC" or "PRIVATE".

I<Supported operators>: C<EQUALS>

=back



=head2 Operator => Str

  Specifies how Device Farm compares the filter's attribute to the value.
For the operators that are supported by each attribute, see the
attribute descriptions.


=head2 Values => ArrayRef[Str|Undef]

  An array of one or more filter values used in a device filter.

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




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

