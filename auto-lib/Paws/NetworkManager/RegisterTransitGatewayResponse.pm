
package Paws::NetworkManager::RegisterTransitGatewayResponse;
  use Moose;
  has TransitGatewayRegistration => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayRegistration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::RegisterTransitGatewayResponse

=head1 ATTRIBUTES


=head2 TransitGatewayRegistration => L<Paws::NetworkManager::TransitGatewayRegistration>

Information about the transit gateway registration.


=head2 _request_id => Str


=cut

