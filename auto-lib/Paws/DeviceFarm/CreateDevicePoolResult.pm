
package Paws::DeviceFarm::CreateDevicePoolResult;
  use Moose;
  has DevicePool => (is => 'ro', isa => 'Paws::DeviceFarm::DevicePool', traits => ['Unwrapped'], xmlname => 'devicePool' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateDevicePoolResult

=head1 ATTRIBUTES


=head2 DevicePool => L<Paws::DeviceFarm::DevicePool>

The newly created device pool.




=cut

1;