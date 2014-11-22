
package Paws::EC2::CancelSpotInstanceRequestsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CancelledSpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
1;