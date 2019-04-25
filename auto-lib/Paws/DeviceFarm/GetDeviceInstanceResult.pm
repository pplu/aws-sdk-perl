
package Paws::DeviceFarm::GetDeviceInstanceResult;
  use Moose;
  has DeviceInstance => (is => 'ro', isa => 'Paws::DeviceFarm::DeviceInstance', traits => ['NameInRequest'], request_name => 'deviceInstance' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceInstanceResult

=head1 ATTRIBUTES


=head2 DeviceInstance => L<Paws::DeviceFarm::DeviceInstance>

An object containing information about your device instance.


=head2 _request_id => Str


=cut

1;