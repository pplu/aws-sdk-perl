
package Paws::StorageGateway::ListVolumeRecoveryPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::VolumeRecoveryPointInfo]');

}
1;