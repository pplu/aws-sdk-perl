
package Aws::ElastiCache::DescribeSnapshotsListMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Snapshot]');

}
1;