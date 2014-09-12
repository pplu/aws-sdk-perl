package Aws::StorageGateway::VolumeInformation {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}
1
