
package Aws::RedShift::DescribeClusterSnapshots {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::SnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshotsResult');
}
1;