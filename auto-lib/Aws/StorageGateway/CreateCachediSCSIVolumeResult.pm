
package Aws::StorageGateway::CreateCachediSCSIVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;
