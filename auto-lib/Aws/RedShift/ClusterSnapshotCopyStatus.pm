package Aws::RedShift::ClusterSnapshotCopyStatus {
  use Moose;
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Num');
}
1
