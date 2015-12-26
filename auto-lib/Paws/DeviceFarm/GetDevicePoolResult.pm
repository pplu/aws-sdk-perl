
package Paws::DeviceFarm::GetDevicePoolResult;
  use Moose;
  has DevicePool => (is => 'ro', isa => 'Paws::DeviceFarm::DevicePool', traits => ['Unwrapped'], xmlname => 'devicePool' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolResult

=head1 ATTRIBUTES


=head2 DevicePool => L<Paws::DeviceFarm::DevicePool>






=cut

1;