
package Paws::DeviceFarm::GetDevicePoolCompatibilityResult;
  use Moose;
  has CompatibleDevices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DevicePoolCompatibilityResult]', traits => ['NameInRequest'], request_name => 'compatibleDevices' );
  has IncompatibleDevices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DevicePoolCompatibilityResult]', traits => ['NameInRequest'], request_name => 'incompatibleDevices' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolCompatibilityResult

=head1 ATTRIBUTES


=head2 CompatibleDevices => ArrayRef[L<Paws::DeviceFarm::DevicePoolCompatibilityResult>]

Information about compatible devices.


=head2 IncompatibleDevices => ArrayRef[L<Paws::DeviceFarm::DevicePoolCompatibilityResult>]

Information about incompatible devices.


=head2 _request_id => Str


=cut

1;