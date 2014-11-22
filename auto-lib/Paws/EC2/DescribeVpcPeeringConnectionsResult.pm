
package Paws::EC2::DescribeVpcPeeringConnectionsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpcPeeringConnections => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcPeeringConnection]', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionSet');

}
1;