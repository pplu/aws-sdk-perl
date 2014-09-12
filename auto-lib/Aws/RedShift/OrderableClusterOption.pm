package Aws::RedShift::OrderableClusterOption {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::AvailabilityZone]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
}
1
