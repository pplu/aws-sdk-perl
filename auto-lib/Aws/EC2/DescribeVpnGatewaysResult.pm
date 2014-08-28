
package Aws::EC2::DescribeVpnGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnGateway]', traits => ['Unwrapped'], xmlname => 'vpnGatewaySet');

}
1;