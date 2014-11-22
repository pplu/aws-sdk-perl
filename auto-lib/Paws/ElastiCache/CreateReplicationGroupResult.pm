
package Paws::ElastiCache::CreateReplicationGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroup');

}
1;