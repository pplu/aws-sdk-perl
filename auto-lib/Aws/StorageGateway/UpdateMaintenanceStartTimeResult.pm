
package Aws::StorageGateway::UpdateMaintenanceStartTimeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

}
1;
