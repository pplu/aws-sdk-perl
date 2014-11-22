
package Paws::EC2::DescribeVpnConnectionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnConnection]', traits => ['Unwrapped'], xmlname => 'vpnConnectionSet');

}
1;