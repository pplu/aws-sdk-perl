
package Aws::StorageGateway::DeleteSnapshotSchedule {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteSnapshotScheduleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;