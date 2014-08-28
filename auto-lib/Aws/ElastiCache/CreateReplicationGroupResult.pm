
package Aws::ElastiCache::CreateReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
1;