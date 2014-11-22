
package Paws::EC2::DescribeNetworkAclsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAcl]', traits => ['Unwrapped'], xmlname => 'networkAclSet');

}
1;