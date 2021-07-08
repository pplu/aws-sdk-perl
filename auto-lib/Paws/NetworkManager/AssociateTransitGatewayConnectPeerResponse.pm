
package Paws::NetworkManager::AssociateTransitGatewayConnectPeerResponse;
  use Moose;
  has TransitGatewayConnectPeerAssociation => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayConnectPeerAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::AssociateTransitGatewayConnectPeerResponse

=head1 ATTRIBUTES


=head2 TransitGatewayConnectPeerAssociation => L<Paws::NetworkManager::TransitGatewayConnectPeerAssociation>

The transit gateway Connect peer association.


=head2 _request_id => Str


=cut

