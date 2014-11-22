
package Paws::ElastiCache::ReplicationGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ReplicationGroup]');

}
1;