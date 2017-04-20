
package Paws::DeviceFarm::GetDeviceResult;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::DeviceFarm::Device', traits => ['NameInRequest'], request_name => 'device' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDeviceResult

=head1 ATTRIBUTES


=head2 Device => L<Paws::DeviceFarm::Device>

An object containing information about the requested device.


=head2 _request_id => Str


=cut

1;