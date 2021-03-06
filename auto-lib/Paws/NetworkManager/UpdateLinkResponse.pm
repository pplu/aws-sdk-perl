
package Paws::NetworkManager::UpdateLinkResponse;
  use Moose;
  has Link => (is => 'ro', isa => 'Paws::NetworkManager::Link');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateLinkResponse

=head1 ATTRIBUTES


=head2 Link => L<Paws::NetworkManager::Link>

Information about the link.


=head2 _request_id => Str


=cut

