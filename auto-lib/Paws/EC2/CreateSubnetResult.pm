
package Paws::EC2::CreateSubnetResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Subnet => (is => 'ro', isa => 'Paws::EC2::Subnet', traits => ['Unwrapped'], xmlname => 'subnet');

}
1;