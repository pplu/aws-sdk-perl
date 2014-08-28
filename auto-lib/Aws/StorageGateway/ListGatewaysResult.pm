
package Aws::StorageGateway::ListGatewaysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Gateways => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::GatewayInformation]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
