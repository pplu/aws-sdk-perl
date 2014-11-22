
package Paws::EC2::CreateVpnConnectionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnConnection => (is => 'ro', isa => 'Paws::EC2::VpnConnection', traits => ['Unwrapped'], xmlname => 'vpnConnection');

}
1;