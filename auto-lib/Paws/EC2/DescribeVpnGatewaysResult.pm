
package Paws::EC2::DescribeVpnGatewaysResult;
  use Moose;
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnGateway]', request_name => 'vpnGatewaySet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnGatewaysResult

=head1 ATTRIBUTES


=head2 VpnGateways => ArrayRef[L<Paws::EC2::VpnGateway>]

Information about one or more virtual private gateways.




=cut

