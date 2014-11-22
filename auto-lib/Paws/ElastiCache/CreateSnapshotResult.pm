
package Paws::ElastiCache::CreateSnapshotResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Paws::ElastiCache::Snapshot');

}
1;