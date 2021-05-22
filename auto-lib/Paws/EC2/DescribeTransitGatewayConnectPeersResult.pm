
package Paws::EC2::DescribeTransitGatewayConnectPeersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayConnectPeers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayConnectPeer]', request_name => 'transitGatewayConnectPeerSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayConnectPeersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayConnectPeers => ArrayRef[L<Paws::EC2::TransitGatewayConnectPeer>]

Information about the Connect peers.


=head2 _request_id => Str


=cut

