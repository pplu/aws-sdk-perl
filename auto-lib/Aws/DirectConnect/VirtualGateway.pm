package Aws::DirectConnect::VirtualGateway {
  use Moose;
  with ('AWS::API::ResultParser');
  has virtualGatewayId => (is => 'ro', isa => 'Str');
  has virtualGatewayState => (is => 'ro', isa => 'Str');
}
1
