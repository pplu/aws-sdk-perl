package Aws::RedShift::ClusterSnapshotCopyStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Num');
}
1
