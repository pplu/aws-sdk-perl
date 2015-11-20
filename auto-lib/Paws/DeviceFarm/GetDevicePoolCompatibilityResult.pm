
package Paws::DeviceFarm::GetDevicePoolCompatibilityResult;
  use Moose;
  has CompatibleDevices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DevicePoolCompatibilityResult]', traits => ['Unwrapped'], xmlname => 'compatibleDevices' );
  has IncompatibleDevices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DevicePoolCompatibilityResult]', traits => ['Unwrapped'], xmlname => 'incompatibleDevices' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolCompatibilityResult

=head1 ATTRIBUTES


=head2 CompatibleDevices => ArrayRef[L<Paws::DeviceFarm::DevicePoolCompatibilityResult>]

  Information about compatible devices.

=head2 IncompatibleDevices => ArrayRef[L<Paws::DeviceFarm::DevicePoolCompatibilityResult>]

  Information about incompatible devices.


=cut

1;