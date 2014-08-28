
package Aws::ElastiCache::DescribeCacheSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroup]', traits => ['Unwrapped'], xmlname => 'CacheSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
1;