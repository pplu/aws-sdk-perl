
package Paws::EC2::DescribeVpnGatewaysResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnGateway]', traits => ['Unwrapped'], xmlname => 'vpnGatewaySet');

}
1;