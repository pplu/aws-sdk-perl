
package Paws::EC2::CreateVpcPeeringConnectionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpcPeeringConnection => (is => 'ro', isa => 'Paws::EC2::VpcPeeringConnection', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnection');

}
1;