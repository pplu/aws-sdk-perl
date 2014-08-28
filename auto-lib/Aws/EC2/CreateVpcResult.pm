
package Aws::EC2::CreateVpcResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Vpc => (is => 'ro', isa => 'Aws::EC2::Vpc', traits => ['Unwrapped'], xmlname => 'vpc');

}
1;