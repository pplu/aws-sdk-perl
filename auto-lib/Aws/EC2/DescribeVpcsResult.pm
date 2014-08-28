
package Aws::EC2::DescribeVpcsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Vpc]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
1;