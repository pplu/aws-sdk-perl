
package Paws::EC2::CreateVpnGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnGateway => (is => 'ro', isa => 'Paws::EC2::VpnGateway', traits => ['Unwrapped'], xmlname => 'vpnGateway');

}
1;