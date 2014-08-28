
package Aws::EC2::CreateVpnConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnConnection => (is => 'ro', isa => 'Aws::EC2::VpnConnection', traits => ['Unwrapped'], xmlname => 'vpnConnection');

}
1;