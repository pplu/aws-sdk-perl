
package Aws::ElastiCache::DescribeReplicationGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReplicationGroup]', traits => ['Unwrapped'], xmlname => 'ReplicationGroup');

}
1;