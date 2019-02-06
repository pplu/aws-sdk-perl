package Paws::DeviceFarm::Device;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Availability => (is => 'ro', isa => 'Str', request_name => 'availability', traits => ['NameInRequest']);
  has Carrier => (is => 'ro', isa => 'Str', request_name => 'carrier', traits => ['NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Paws::DeviceFarm::CPU', request_name => 'cpu', traits => ['NameInRequest']);
  has FleetName => (is => 'ro', isa => 'Str', request_name => 'fleetName', traits => ['NameInRequest']);
  has FleetType => (is => 'ro', isa => 'Str', request_name => 'fleetType', traits => ['NameInRequest']);
  has FormFactor => (is => 'ro', isa => 'Str', request_name => 'formFactor', traits => ['NameInRequest']);
  has HeapSize => (is => 'ro', isa => 'Int', request_name => 'heapSize', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest']);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DeviceInstance]', request_name => 'instances', traits => ['NameInRequest']);
  has Manufacturer => (is => 'ro', isa => 'Str', request_name => 'manufacturer', traits => ['NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', request_name => 'memory', traits => ['NameInRequest']);
  has Model => (is => 'ro', isa => 'Str', request_name => 'model', traits => ['NameInRequest']);
  has ModelId => (is => 'ro', isa => 'Str', request_name => 'modelId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Os => (is => 'ro', isa => 'Str', request_name => 'os', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Radio => (is => 'ro', isa => 'Str', request_name => 'radio', traits => ['NameInRequest']);
  has RemoteAccessEnabled => (is => 'ro', isa => 'Bool', request_name => 'remoteAccessEnabled', traits => ['NameInRequest']);
  has RemoteDebugEnabled => (is => 'ro', isa => 'Bool', request_name => 'remoteDebugEnabled', traits => ['NameInRequest']);
  has Resolution => (is => 'ro', isa => 'Paws::DeviceFarm::Resolution', request_name => 'resolution', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Device object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Resolution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a device type that an app is tested against.

=head1 ATTRIBUTES


=head2 Arn => Str

  The device's ARN.


=head2 Availability => Str

  Reflects how likely a device will be available for a test run. It is
currently available in the ListDevices and GetDevice API methods.


=head2 Carrier => Str

  The device's carrier.


=head2 Cpu => L<Paws::DeviceFarm::CPU>

  Information about the device's CPU.


=head2 FleetName => Str

  The name of the fleet to which this device belongs.


=head2 FleetType => Str

  The type of fleet to which this device belongs. Possible values for
fleet type are PRIVATE and PUBLIC.


=head2 FormFactor => Str

  The device's form factor.

Allowed values include:

=over

=item *

PHONE: The phone form factor.

=item *

TABLET: The tablet form factor.

=back



=head2 HeapSize => Int

  The device's heap size, expressed in bytes.


=head2 Image => Str

  The device's image name.


=head2 Instances => ArrayRef[L<Paws::DeviceFarm::DeviceInstance>]

  The instances belonging to this device.


=head2 Manufacturer => Str

  The device's manufacturer name.


=head2 Memory => Int

  The device's total memory size, expressed in bytes.


=head2 Model => Str

  The device's model name.


=head2 ModelId => Str

  The device's model ID.


=head2 Name => Str

  The device's display name.


=head2 Os => Str

  The device's operating system type.


=head2 Platform => Str

  The device's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back



=head2 Radio => Str

  The device's radio.


=head2 RemoteAccessEnabled => Bool

  Specifies whether remote access has been enabled for the specified
device.


=head2 RemoteDebugEnabled => Bool

  This flag is set to C<true> if remote debugging is enabled for the
device.


=head2 Resolution => L<Paws::DeviceFarm::Resolution>

  The resolution of the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

