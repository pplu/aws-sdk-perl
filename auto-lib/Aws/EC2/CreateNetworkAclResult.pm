
package Aws::EC2::CreateNetworkAclResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkAcl => (is => 'ro', isa => 'Aws::EC2::NetworkAcl', traits => ['Unwrapped'], xmlname => 'networkAcl');

}
1;