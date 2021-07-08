
package Paws::NetworkManager::GetConnectionsResponse;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Connection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetConnectionsResponse

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::NetworkManager::Connection>]

Information about the connections.


=head2 NextToken => Str

The token to use for the next page of results.


=head2 _request_id => Str


=cut

