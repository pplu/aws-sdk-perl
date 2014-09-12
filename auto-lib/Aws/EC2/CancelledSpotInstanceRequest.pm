package Aws::EC2::CancelledSpotInstanceRequest {
  use Moose;
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}
1
