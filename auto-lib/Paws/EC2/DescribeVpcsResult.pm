
package Paws::EC2::DescribeVpcsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Vpc]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
1;