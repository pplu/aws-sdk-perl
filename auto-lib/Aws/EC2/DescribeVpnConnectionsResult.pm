
package Aws::EC2::DescribeVpnConnectionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnConnection]', traits => ['Unwrapped'], xmlname => 'vpnConnectionSet');

}
1;