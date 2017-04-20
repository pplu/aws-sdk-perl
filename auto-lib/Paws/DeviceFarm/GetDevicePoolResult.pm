
package Paws::DeviceFarm::GetDevicePoolResult;
  use Moose;
  has DevicePool => (is => 'ro', isa => 'Paws::DeviceFarm::DevicePool', traits => ['NameInRequest'], request_name => 'devicePool' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolResult

=head1 ATTRIBUTES


=head2 DevicePool => L<Paws::DeviceFarm::DevicePool>

An object containing information about the requested device pool.


=head2 _request_id => Str


=cut

1;