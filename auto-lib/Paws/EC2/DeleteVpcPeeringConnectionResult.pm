
package Paws::EC2::DeleteVpcPeeringConnectionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
1;