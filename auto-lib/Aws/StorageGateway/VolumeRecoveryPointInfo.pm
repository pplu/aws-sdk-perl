package Aws::StorageGateway::VolumeRecoveryPointInfo {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeUsageInBytes => (is => 'ro', isa => 'Num');
}
1;
