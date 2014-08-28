
package Aws::EC2::DeleteVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
1;