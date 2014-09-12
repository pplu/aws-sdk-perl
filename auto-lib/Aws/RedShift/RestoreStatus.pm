package Aws::RedShift::RestoreStatus {
  use Moose;
  has CurrentRestoreRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has SnapshotSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
}
1
