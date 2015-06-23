package Paws::RedShift::ClusterSnapshotCopyStatus {
  use Moose;
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
}
1;
