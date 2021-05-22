
package Paws::NetworkManager::UpdateConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::NetworkManager::Connection');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::NetworkManager::Connection>

Information about the connection.


=head2 _request_id => Str


=cut

