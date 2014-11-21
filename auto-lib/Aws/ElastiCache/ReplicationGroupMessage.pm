
package Aws::ElastiCache::ReplicationGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReplicationGroup]');

}
1;