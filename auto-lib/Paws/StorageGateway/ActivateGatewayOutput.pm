
package Paws::StorageGateway::ActivateGatewayOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;