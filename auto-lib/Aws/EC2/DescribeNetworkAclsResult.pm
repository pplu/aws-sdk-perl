
package Aws::EC2::DescribeNetworkAclsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAcl]', traits => ['Unwrapped'], xmlname => 'networkAclSet');

}
1;