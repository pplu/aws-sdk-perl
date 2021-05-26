
package Paws::NetworkManager::DeleteSiteResponse;
  use Moose;
  has Site => (is => 'ro', isa => 'Paws::NetworkManager::Site');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteSiteResponse

=head1 ATTRIBUTES


=head2 Site => L<Paws::NetworkManager::Site>

Information about the site.


=head2 _request_id => Str


=cut

