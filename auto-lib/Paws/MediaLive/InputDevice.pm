# Generated by default/object.tt
package Paws::MediaLive::InputDevice;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ConnectionState => (is => 'ro', isa => 'Str', request_name => 'connectionState', traits => ['NameInRequest']);
  has DeviceSettingsSyncState => (is => 'ro', isa => 'Str', request_name => 'deviceSettingsSyncState', traits => ['NameInRequest']);
  has DeviceUpdateStatus => (is => 'ro', isa => 'Str', request_name => 'deviceUpdateStatus', traits => ['NameInRequest']);
  has HdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceHdSettings', request_name => 'hdDeviceSettings', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has MacAddress => (is => 'ro', isa => 'Str', request_name => 'macAddress', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has NetworkSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceNetworkSettings', request_name => 'networkSettings', traits => ['NameInRequest']);
  has SerialNumber => (is => 'ro', isa => 'Str', request_name => 'serialNumber', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has UhdDeviceSettings => (is => 'ro', isa => 'Paws::MediaLive::InputDeviceUhdSettings', request_name => 'uhdDeviceSettings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputDevice object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UhdDeviceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An input device.

=head1 ATTRIBUTES


=head2 Arn => Str

The unique ARN of the input device.


=head2 ConnectionState => Str

The state of the connection between the input device and AWS.


=head2 DeviceSettingsSyncState => Str

The status of the action to synchronize the device configuration. If
you change the configuration of the input device (for example, the
maximum bitrate), MediaLive sends the new data to the device. The
device might not update itself immediately. SYNCED means the device has
updated its configuration. SYNCING means that it has not updated its
configuration.


=head2 DeviceUpdateStatus => Str

The status of software on the input device.


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


=head2 UhdDeviceSettings => L<Paws::MediaLive::InputDeviceUhdSettings>

Settings that describe an input device that is type UHD.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

