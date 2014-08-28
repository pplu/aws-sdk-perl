
package Aws::ElastiCache::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
1;