
package Paws::StorageGateway::CreateStorediSCSIVolumeOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');

}
1;