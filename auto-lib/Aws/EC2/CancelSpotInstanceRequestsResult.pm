
package Aws::EC2::CancelSpotInstanceRequestsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CancelledSpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
1;