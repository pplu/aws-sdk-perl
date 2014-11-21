package Aws::StorageGateway::TapeRecoveryPointInfo {
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
}
1;
