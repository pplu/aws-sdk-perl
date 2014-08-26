package Aws::StorageGateway::GatewayInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
}
1
