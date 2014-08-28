
package Aws::EC2::DescribeVpcPeeringConnectionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcPeeringConnections => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpcPeeringConnection]', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionSet');

}
1;