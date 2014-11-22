
package Paws::StorageGateway::UpdateSnapshotSchedule {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int', required => 1);
  has StartAt => (is => 'ro', isa => 'Int', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateSnapshotScheduleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;