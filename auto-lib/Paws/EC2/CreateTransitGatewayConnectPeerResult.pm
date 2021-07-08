
package Paws::EC2::CreateTransitGatewayConnectPeerResult;
  use Moose;
  has TransitGatewayConnectPeer => (is => 'ro', isa => 'Paws::EC2::TransitGatewayConnectPeer', request_name => 'transitGatewayConnectPeer', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayConnectPeerResult

=head1 ATTRIBUTES


=head2 TransitGatewayConnectPeer => L<Paws::EC2::TransitGatewayConnectPeer>

Information about the Connect peer.


=head2 _request_id => Str


=cut

