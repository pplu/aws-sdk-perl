package Aws::EC2::CustomerGateway {
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bgpAsn');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has IpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}
1
