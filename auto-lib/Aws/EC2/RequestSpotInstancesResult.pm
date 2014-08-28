
package Aws::EC2::RequestSpotInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
1;