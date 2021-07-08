
package Paws::MediaLive::UpdateInputDeviceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionState');
  has DeviceSettingsSyncState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceSettingsSyncState');
  has DeviceUpdateStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceUpdateStatus');
  has HdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceHdSettings', traits => ['NameInRequest'], request_name => 'hdDeviceSettings');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MacAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'macAddress');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NetworkSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceNetworkSettings', traits => ['NameInRequest'], request_name => 'networkSettings');
  has SerialNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serialNumber');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UhdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceUhdSettings', traits => ['NameInRequest'], request_name => 'uhdDeviceSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputDeviceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The unique ARN of the input device.


=head2 ConnectionState => Str

The state of the connection between the input device and AWS.

Valid values are: C<"DISCONNECTED">, C<"CONNECTED">
=head2 DeviceSettingsSyncState => Str

The status of the action to synchronize the device configuration. If
you change the configuration of the input device (for example, the
maximum bitrate), MediaLive sends the new data to the device. The
device might not update itself immediately. SYNCED means the device has
updated its configuration. SYNCING means that it has not updated its
configuration.

Valid values are: C<"SYNCED">, C<"SYNCING">
=head2 DeviceUpdateStatus => Str

The status of software on the input device.

Valid values are: C<"UP_TO_DATE">, C<"NOT_UP_TO_DATE">
=head2 HdDeviceSettings => L<Paws::MediaLive::InputDeviceHdSettings>

Settings that describe an input device that is type HD.


=head2 Id => Str

The unique ID of the input device.


=head2 MacAddress => Str

The network MAC address of the input device.


=head2 Name => Str

A name that you specify for the input device.


=head2 NetworkSettings => L<Paws::MediaLive::InputDeviceNetworkSettings>

The network settings for the input device.


=head2 SerialNumber => Str

The unique serial number of the input device.


=head2 Type => Str

The type of the input device.

Valid values are: C<"HD">
=head2 UhdDeviceSettings => L<Paws::MediaLive::InputDeviceUhdSettings>

Settings that describe an input device that is type UHD.


=head2 _request_id => Str


=cut

