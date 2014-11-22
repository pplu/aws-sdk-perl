
package Paws::ElastiCache::DescribeSnapshotsListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Snapshot]');

}
1;