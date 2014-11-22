
package Paws::StorageGateway::UpdateSnapshotScheduleOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;