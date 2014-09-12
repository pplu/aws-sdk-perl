package Aws::StorageGateway::TapeArchive {
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has RetrievedTo => (is => 'ro', isa => 'Str');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
}
1
