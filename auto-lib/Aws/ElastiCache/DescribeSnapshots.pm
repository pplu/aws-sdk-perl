
package Aws::ElastiCache::DescribeSnapshots {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotSource => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotsResult');
}
1;
  