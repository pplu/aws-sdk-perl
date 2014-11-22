
package Paws::StorageGateway::CreateCachediSCSIVolume {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateCachediSCSIVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;