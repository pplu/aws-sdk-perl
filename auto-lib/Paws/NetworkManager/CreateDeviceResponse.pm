
package Paws::NetworkManager::CreateDeviceResponse;
  use Moose;
  has Device => (is => 'ro', isa => 'Paws::NetworkManager::Device');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateDeviceResponse

=head1 ATTRIBUTES


=head2 Device => L<Paws::NetworkManager::Device>

Information about the device.


=head2 _request_id => Str


=cut

