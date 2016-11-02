
package Paws::EC2::DescribeVpnGatewaysResult;
  use Moose;
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnGateway]', xmlname => 'vpnGatewaySet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnGatewaysResult

=head1 ATTRIBUTES


=head2 VpnGateways => ArrayRef[L<Paws::EC2::VpnGateway>]

Information about one or more virtual private gateways.


=head2 _request_id => Str


=cut

