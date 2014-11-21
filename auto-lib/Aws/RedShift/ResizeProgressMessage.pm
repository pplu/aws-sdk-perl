
package Aws::RedShift::ResizeProgressMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvgResizeRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');
  has TotalResizeDataInMegaBytes => (is => 'ro', isa => 'Num');

}
1;