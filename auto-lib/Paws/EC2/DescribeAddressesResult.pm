
package Paws::EC2::DescribeAddressesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Address]', traits => ['Unwrapped'], xmlname => 'addressesSet');

}
1;