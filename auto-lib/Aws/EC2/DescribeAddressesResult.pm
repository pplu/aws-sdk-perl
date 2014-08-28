
package Aws::EC2::DescribeAddressesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Addresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Address]', traits => ['Unwrapped'], xmlname => 'addressesSet');

}
1;