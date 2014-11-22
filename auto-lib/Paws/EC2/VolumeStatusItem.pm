package Paws::EC2::VolumeStatusItem {
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusAction]', traits => ['Unwrapped'], xmlname => 'actionsSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeStatus => (is => 'ro', isa => 'Paws::EC2::VolumeStatusInfo', traits => ['Unwrapped'], xmlname => 'volumeStatus');
}
1;
