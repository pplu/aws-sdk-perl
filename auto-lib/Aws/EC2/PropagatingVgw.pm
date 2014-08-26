package Aws::EC2::PropagatingVgw {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
}
1
