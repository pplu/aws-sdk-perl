
package Aws::EC2::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');

}
1;