
package Paws::StorageGateway::DescribeTapeRecoveryPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::TapeRecoveryPointInfo]');

}
1;