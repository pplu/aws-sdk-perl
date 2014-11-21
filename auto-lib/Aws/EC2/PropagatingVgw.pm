package Aws::EC2::PropagatingVgw {
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
}
1;
