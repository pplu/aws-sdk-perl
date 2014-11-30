
package Paws::EC2::CreateVpnConnectionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnConnection => (is => 'ro', isa => 'Paws::EC2::VpnConnection', traits => ['Unwrapped'], xmlname => 'vpnConnection');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnectionResult

=head1 ATTRIBUTES

=head2 VpnConnection => Paws::EC2::VpnConnection

  

Information about the VPN connection.











=cut

