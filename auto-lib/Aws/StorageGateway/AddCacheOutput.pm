
package Aws::StorageGateway::AddCacheOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;