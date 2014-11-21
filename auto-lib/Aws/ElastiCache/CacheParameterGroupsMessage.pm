
package Aws::ElastiCache::CacheParameterGroupsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;