package Aws::StorageGateway::TapeRecoveryPointInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
}
1
