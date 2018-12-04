package Paws::DeviceFarm::Rule;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', request_name => 'attribute', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Str', request_name => 'operator', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Rule object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

Represents a condition for a device pool. It is passed in as the
C<rules> parameter to CreateDevicePool and UpdateDevicePool.

=head1 ATTRIBUTES


=head2 Attribute => Str

  The rule's attribute. It is the aspect of a device such as platform or
model used as selection criteria to create or update a device pool.

Allowed values include:

=over

=item *

ARN: The Amazon Resource Name (ARN) of a device. For example,
"arn:aws:devicefarm:us-west-2::device:12345Example".

=item *

PLATFORM: The device platform. Valid values are "ANDROID" or "IOS".

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

APPIUM_VERSION: The Appium version for the test.

=item *

INSTANCE_ARN: The Amazon Resource Name (ARN) of the device instance.

=item *

INSTANCE_LABELS: The label of the device instance.

=item *

FLEET_TYPE: The fleet type. Valid values are "PUBLIC" or "PRIVATE".

=back



=head2 Operator => Str

  The rule's operator.

=over

=item *

EQUALS: The equals operator.

=item *

GREATER_THAN: The greater-than operator.

=item *

IN: The in operator.

=item *

LESS_THAN: The less-than operator.

=item *

NOT_IN: The not-in operator.

=item *

CONTAINS: The contains operator.

=back



=head2 Value => Str

  The rule's value.

The value must be passed in as a string using escaped quotes.

For example:

"value": "\"ANDROID\""



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

