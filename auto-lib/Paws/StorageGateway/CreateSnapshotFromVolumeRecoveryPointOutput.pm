
package Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');

}
1;