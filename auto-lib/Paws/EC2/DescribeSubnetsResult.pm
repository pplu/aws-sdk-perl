
package Paws::EC2::DescribeSubnetsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Subnet]', traits => ['Unwrapped'], xmlname => 'subnetSet');

}
1;