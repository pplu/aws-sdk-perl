
package Aws::StorageGateway::ListVolumeRecoveryPointsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeRecoveryPointInfo]');

}
1;
