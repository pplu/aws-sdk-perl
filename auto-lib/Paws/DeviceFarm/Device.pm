package Paws::DeviceFarm::Device;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Carrier => (is => 'ro', isa => 'Str', xmlname => 'carrier', request_name => 'carrier', traits => ['Unwrapped','NameInRequest']);
  has Cpu => (is => 'ro', isa => 'Paws::DeviceFarm::CPU', xmlname => 'cpu', request_name => 'cpu', traits => ['Unwrapped','NameInRequest']);
  has FleetName => (is => 'ro', isa => 'Str', xmlname => 'fleetName', request_name => 'fleetName', traits => ['Unwrapped','NameInRequest']);
  has FleetType => (is => 'ro', isa => 'Str', xmlname => 'fleetType', request_name => 'fleetType', traits => ['Unwrapped','NameInRequest']);
  has FormFactor => (is => 'ro', isa => 'Str', xmlname => 'formFactor', request_name => 'formFactor', traits => ['Unwrapped','NameInRequest']);
  has HeapSize => (is => 'ro', isa => 'Int', xmlname => 'heapSize', request_name => 'heapSize', traits => ['Unwrapped','NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', xmlname => 'image', request_name => 'image', traits => ['Unwrapped','NameInRequest']);
  has Manufacturer => (is => 'ro', isa => 'Str', xmlname => 'manufacturer', request_name => 'manufacturer', traits => ['Unwrapped','NameInRequest']);
  has Memory => (is => 'ro', isa => 'Int', xmlname => 'memory', request_name => 'memory', traits => ['Unwrapped','NameInRequest']);
  has Model => (is => 'ro', isa => 'Str', xmlname => 'model', request_name => 'model', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Os => (is => 'ro', isa => 'Str', xmlname => 'os', request_name => 'os', traits => ['Unwrapped','NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', xmlname => 'platform', request_name => 'platform', traits => ['Unwrapped','NameInRequest']);
  has Radio => (is => 'ro', isa => 'Str', xmlname => 'radio', request_name => 'radio', traits => ['Unwrapped','NameInRequest']);
  has RemoteAccessEnabled => (is => 'ro', isa => 'Bool', xmlname => 'remoteAccessEnabled', request_name => 'remoteAccessEnabled', traits => ['Unwrapped','NameInRequest']);
  has Resolution => (is => 'ro', isa => 'Paws::DeviceFarm::Resolution', xmlname => 'resolution', request_name => 'resolution', traits => ['Unwrapped','NameInRequest']);
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


=head2 Manufacturer => Str

  The device's manufacturer name.


=head2 Memory => Int

  The device's total memory size, expressed in bytes.


=head2 Model => Str

  The device's model name.


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


=head2 Resolution => L<Paws::DeviceFarm::Resolution>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

