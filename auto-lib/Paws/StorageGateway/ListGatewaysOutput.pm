
package Paws::StorageGateway::ListGatewaysOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Gateways => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::GatewayInfo]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;