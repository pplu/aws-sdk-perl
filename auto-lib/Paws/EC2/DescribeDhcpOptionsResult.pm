
package Paws::EC2::DescribeDhcpOptionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DhcpOptions]', traits => ['Unwrapped'], xmlname => 'dhcpOptionsSet');

}
1;