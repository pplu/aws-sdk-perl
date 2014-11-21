
package Aws::ElastiCache::CacheSubnetGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;