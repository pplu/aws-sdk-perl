
package Paws::NetworkManager::GetDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Device]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::NetworkManager::Device>]

The devices.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

