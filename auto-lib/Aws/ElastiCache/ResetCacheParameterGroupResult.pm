
package Aws::ElastiCache::ResetCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
1;