
package Aws::RDS::DescribeDBSnapshots {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::DescribeDBSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');
}
1;
  