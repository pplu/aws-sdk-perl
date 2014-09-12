package Aws::StorageGateway::CachediSCSIVolumeInformation {
  use Moose;
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::VolumeiSCSIAttributes');
}
1
