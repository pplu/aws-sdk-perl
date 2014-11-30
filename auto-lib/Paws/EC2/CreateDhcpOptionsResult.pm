
package Paws::EC2::CreateDhcpOptionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'Paws::EC2::DhcpOptions', traits => ['Unwrapped'], xmlname => 'dhcpOptions');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDhcpOptionsResult

=head1 ATTRIBUTES

=head2 DhcpOptions => Paws::EC2::DhcpOptions

  

A set of DHCP options.











=cut

