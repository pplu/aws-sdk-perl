
package Paws::DeviceFarm::GetDeviceResult;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::DeviceFarm::Device', traits => ['Unwrapped'], xmlname => 'device' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceResult

=head1 ATTRIBUTES

=head2 Device => L<Paws::DeviceFarm::Device>

  


=cut

1;