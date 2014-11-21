
package Aws::StorageGateway::ListGatewaysOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Gateways => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::GatewayInfo]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;