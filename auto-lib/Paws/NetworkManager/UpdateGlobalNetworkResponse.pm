
package Paws::NetworkManager::UpdateGlobalNetworkResponse;
  use Moose;
  has GlobalNetwork => (is => 'ro', isa => 'Paws::NetworkManager::GlobalNetwork');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateGlobalNetworkResponse

=head1 ATTRIBUTES


=head2 GlobalNetwork => L<Paws::NetworkManager::GlobalNetwork>

Information about the global network object.


=head2 _request_id => Str


=cut

