
package Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint {
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;