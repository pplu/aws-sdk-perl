
package Paws::StorageGateway::CreateCachediSCSIVolumeOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;