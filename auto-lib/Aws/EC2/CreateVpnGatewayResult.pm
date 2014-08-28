
package Aws::EC2::CreateVpnGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnGateway => (is => 'ro', isa => 'Aws::EC2::VpnGateway', traits => ['Unwrapped'], xmlname => 'vpnGateway');

}
1;