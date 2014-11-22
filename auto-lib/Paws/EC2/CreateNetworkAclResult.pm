
package Paws::EC2::CreateNetworkAclResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NetworkAcl => (is => 'ro', isa => 'Paws::EC2::NetworkAcl', traits => ['Unwrapped'], xmlname => 'networkAcl');

}
1;