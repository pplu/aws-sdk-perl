
package Paws::EC2::CreateDhcpOptionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'Paws::EC2::DhcpOptions', traits => ['Unwrapped'], xmlname => 'dhcpOptions');

}
1;