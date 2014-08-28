
package Aws::StorageGateway::CreateStorediSCSIVolume {
  use Moose;
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Bool', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateStorediSCSIVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
