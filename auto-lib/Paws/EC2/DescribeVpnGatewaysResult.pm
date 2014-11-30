
package Paws::EC2::DescribeVpnGatewaysResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnGateway]', traits => ['Unwrapped'], xmlname => 'vpnGatewaySet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnGatewaysResult

=head1 ATTRIBUTES

=head2 VpnGateways => ArrayRef[Paws::EC2::VpnGateway]

  

Information about one or more virtual private gateways.











=cut

