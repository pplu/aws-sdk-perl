
package Aws::EC2::DescribeSubnetsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Subnet]', traits => ['Unwrapped'], xmlname => 'subnetSet');

}
1;