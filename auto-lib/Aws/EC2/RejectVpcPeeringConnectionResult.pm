
package Aws::EC2::RejectVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
1;