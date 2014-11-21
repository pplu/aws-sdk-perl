
package Aws::StorageGateway::DescribeTapeRecoveryPointsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeRecoveryPointInfo]');

}
1;