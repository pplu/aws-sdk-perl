
package Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayConnectPeerAssociations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::TransitGatewayConnectPeerAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayConnectPeerAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use for the next page of results.


=head2 TransitGatewayConnectPeerAssociations => ArrayRef[L<Paws::NetworkManager::TransitGatewayConnectPeerAssociation>]

Information about the transit gateway Connect peer associations.


=head2 _request_id => Str


=cut

