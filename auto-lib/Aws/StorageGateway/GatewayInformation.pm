package Aws::StorageGateway::GatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
}
1
