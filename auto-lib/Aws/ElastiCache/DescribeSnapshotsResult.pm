
package Aws::ElastiCache::DescribeSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
1;