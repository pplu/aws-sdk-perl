
package Aws::ElastiCache::RebootCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::RebootCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');
}
1;