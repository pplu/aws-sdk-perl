
package Aws::EC2::CreateSubnetResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Subnet => (is => 'ro', isa => 'Aws::EC2::Subnet', traits => ['Unwrapped'], xmlname => 'subnet');

}
1;